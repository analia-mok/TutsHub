<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Filesystem\Filesystem;

class CustomVoyagerFormField extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'make:vformfield {field_name}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Creates handler boilerplate for a custom voyager form field';

    /**
     * The filesystem instance.
     *
     * @var \Illuminate\Filesystem\Filesystem
     */
    private $files;

    /**
     * Create a new command instance.
     *
     * @param Filesystem $files News filesystem instance
     * @return void
     */
    public function __construct(Filesystem $files)
    {
        parent::__construct();
        $this->files = $files;
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $field_name = trim($this->argument('field_name'));

        $handler_stub = $this->files->get(__DIR__ . '/CustomVoyagerFormFieldCommand/FormFieldHandler.stub');
        $view_stub = $this->files->get(__DIR__ . '/CustomVoyagerFormFieldCommand/FormFieldView.stub');

        // Create a new Form Field stub.
        $form_field_path = __DIR__ . '/../../VoyagerFields/';
        $handler_stub = str_replace('FIELD_NAME', strtolower($field_name), $handler_stub);
        $handler_stub = str_replace('HANDLER_NAME', ucfirst($field_name) . 'Handler', $handler_stub);

        if (!$this->files->exists($form_field_path)) {
            $this->files->makeDirectory($form_field_path);
        }
        $this->files->put($form_field_path . ucfirst($field_name) . 'Handler.php', $handler_stub);

        // Create a view template in the formfield directory
        $resource_path = __DIR__ . '/../../../resources/views/formfields/';
        $view_stub = str_replace('FIELD_NAME', strtolower($field_name), $view_stub);

        if (!$this->files->exists($resource_path)) {
            $this->files->makeDirectory($resource_path);
        }
        $this->files->put($resource_path . strtolower($field_name) . '.blade.php', $view_stub);

        // Success Message
        $this->info('Voyager Form Field created successfully: ' . $field_name);
    }
}

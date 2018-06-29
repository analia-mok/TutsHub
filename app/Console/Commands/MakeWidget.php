<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Filesystem\Filesystem;

class MakeWidget extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'make:vwidget {widget_name} {model_name}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Creates a voyager widget';

    /**
     * The filesystem instance.
     *
     * @var \Illuminate\Filesystem\Filesystem
     */
    private $files;

    /**
     * Create a new command instance.
     *
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
        $widget_name = trim($this->argument('widget_name'));
        $model_name = trim($this->argument('model_name'));

        $icon_class = $this->ask('Enter voyager icon class [voyager-helm]');
        $icon_class = $icon_class ?? 'voyager-helm';

        // Create new widget file
        $this->createWidget($widget_name, $model_name, $icon_class);

        // Success Message
        $this->info('Voyager widget created successfully: ' . $widget_name);
    }

    /**
     * Creates Voyager Widget file using Widget.stub and the provided name
     *
     * @param String $widget_name
     * @param String $model_name
     * @param String $icon_class
     * @return void
     */
    private function createWidget($widget_name, $model_name, $icon_class)
    {

        $model = '\\App\\' . $model_name;
        $stub = $this->files->get(__DIR__ . '/WidgetCommand/Widget.stub');

        // Replace placeholders
        $stub = str_replace('LOWER_WIDGET_PLACEHOLDER', strtolower($widget_name), $stub);
        $stub = str_replace('WIDGET_PLACEHOLDER', $widget_name, $stub);
        $stub = str_replace('MODEL_PLACEHOLDER', $model, $stub);
        $stub = str_replace('ICON_PLACEHOLDER', $icon_class, $stub);

        $this->files->put(__DIR__ . '/../../Widgets/' . $widget_name . '.php', $stub);

        $default_img_path = __DIR__ . '/../../../public/images/default.jpg';

        if (!$this->files->exists($default_img_path)) {
            $this->files->copy(__DIR__ . '/WidgetCommand/default.jpg', $default_img_path);
        }
    }
}

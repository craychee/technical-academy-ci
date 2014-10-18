<?php
use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

use Behat\MinkExtension\Context\MinkContext;

require 'vendor/autoload.php';

/**
* Features context.
*/
class FeatureContext extends MinkContext
{
    /**
     * Initializes context.
     * Every scenario gets its own context object.
     *
     * @param array $parameters context parameters (set them up through behat.yml)
     */
    public function __construct(array $parameters)
    {
    }

    /**
     * @Given /^I manually press "([^"]*)"$/
     */
     public function iManuallyPress($key)
     {
      $script = "jQuery.event.trigger({ type : 'keypress', which : '" . $key . "' });";
      $this->getSession()->evaluateScript($script);
     }
}

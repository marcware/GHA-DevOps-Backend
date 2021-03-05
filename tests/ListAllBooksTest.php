<?php

use Laravel\Lumen\Testing\DatabaseMigrations;
use Laravel\Lumen\Testing\DatabaseTransactions;

class ListAllBooksTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function testListAllBooks()
    {
        $response = $this->get('/books',["Authorization" =>'asdfasdf']);

        $this->assertGreaterThan(0,$response->count());
    }
}

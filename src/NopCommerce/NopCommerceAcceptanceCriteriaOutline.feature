Feature: Bookcategory


Background: I should be able to see Homepage
Given       I Enter Url" http://demo.nopcommerce.com/" in browser
And         I am on Homepage

Scenario Outline: I should be able to see top manu tabs on homepage with categories

When    I am on home page
Then    I should be able to see top manu tabs with "<categories>"

  Examples: |categories       |
            |Computer         |
            |Electronic       |
            |Apparel          |
            |Digital Download |
            |Books            |
            |Jewellery        |
            |Gift Card        |

  Scenario Outline: I should be able to see book page with filters

    When  I select book Category from top manu tabs on home page
    Then  I should be navigated  to book category
    And   I shoudl be able to see "<Filters>"

    Examples: |Filters        |
              |Short by       |
              |Display        |
              |The Grid       |
              |List Tab       |

Scenario Outline: I should be able to see all of terms of each filter
  Given   I am on book page
  When    I click on "<Filter>"
  Then    I should be able to see "<List>" in drop down manu

  Examples:
  | Filter        | List        |
  | Sort by       | Name: A to Z, Name: Z to A, Price Low to High, Price High to Low, Created on |
  | Display       | 3, 6,9      |


  Scenario Outline: I should be able to choose any filter option with specific result
    Given   I am on book page
    When    I click on "<Filter>"
    Then    I Click on any "<option>"
    Then    I should be able to choose any filter option from the list
    And     I should be able to see "<result>"

    Examples:
    |Filter       |option           |result       |
    |Sort by      |Name A to Z      |sorted product with the product name in alphabetical order from A to Z |
    |Sort by      |Name Z to A      |sorted product with the product name in aplhabetical order from Z to A |
    |Sort by      |Price Low to High|sorted product with the price in descending order                      |
    |Sort by      |Price High to Low|sorted product with the price in ascending order                       |
    |Sort by      |Created by       |Recently added product should be show first                            |
    |Display      |3                |3 product in a page                                                    |
    |Display      |6                |6 product in a page                                                    |
    |Display      |9                |9 product in a page                                                    |

    Scenario Outline: I should be able to see product display format according display format type as per given picture in srs document
      Given   I  am on book page
      When    I click on "<display format icon>"
      Then    I should be able to see product display format according display format type as per given picture in SRS docment

      Examples:
      |display format icon  |
      |Grid                 |
      |List                 |


/*
* #74 - Org Names
* Some Salesforce orgs (Trailhead playground orgs, for example) are given random names that include a combination of an adjective and 
* an animal as a prefix. For instance, cunning-impala, curious-raccoon, and brave-hawk are possible prefixes for names for such orgs.
* 
* Implement the method generateOrgNames that takes as input two lists of strings adjectives and animals, and returns a list of strings 
* containing all org name prefixes that can be formed by combining the adjectives and animals. Assume that the input lists will never be empty
* 
* Given the following test code:
* 
* List<String> adjectives = new List<String> {'cunning', 'brave'};
* List<String> animals = new List<String> {'wolf', 'bear'};
* List<String> result = orgNames(adjectives, animals);
* The list result contains the strings 'cunning-wolf', 'cunning-bear', 'brave-wolf', and 'brave-bear'.
*/

public List<String> orgNames(List<String> adjectives, List<String> animals) {
    //code here
    List<String> orgNameList = new List<String>();
    for (String adj : adjectives) {
        for (String ani : animals) {
            orgNameList.add(adj + '-' + ani);
        }
    }
    return orgNameList;
}

/*
* Test 1
Set<String> expected = new Set<String> {'brave-bear'};
List<String> adjectives = new List<String> {'brave'};
List<String> animals = new List<String> {'bear'};
List<String> result = orgNames(adjectives, animals);
System.assertEquals(expected, new Set<String>(result), 'result did not contain same values as set of 1 expected value');

* Test 2
Set<String> expected = new Set<String> {'brave-owl', 'brave-impala', 'cunning-owl', 'cunning-impala', 'smart-owl', 'smart-impala'};
List<String> adjectives = new List<String> {'brave', 'cunning', 'smart'};
List<String> animals = new List<String> {'owl', 'impala'};
List<String> result = orgNames(adjectives, animals);
System.assertEquals(expected, new Set<String>(result), 'result did not contain same values as set of 6 expected values');

* Test 3
Set<String> expected = new Set<String> {'aggressive-alpaca','aggressive-coyote','aggressive-crab','aggressive-elephant','aggressive-falcon','aggressive-ferret','aggressive-horse','aggressive-hummingbird','aggressive-impala','aggressive-kangaroo','aggressive-lemur','aggressive-leopard','aggressive-lion','aggressive-llama','aggressive-lobster','aggressive-monkey','aggressive-ox','aggressive-panda','aggressive-parrot','aggressive-peacock','aggressive-seal','aggressive-sheep','aggressive-skunk','agreeable-alpaca','agreeable-coyote','agreeable-crab','agreeable-elephant','agreeable-falcon','agreeable-ferret','agreeable-horse','agreeable-hummingbird','agreeable-impala','agreeable-kangaroo','agreeable-lemur','agreeable-leopard','agreeable-lion','agreeable-llama','agreeable-lobster','agreeable-monkey','agreeable-ox','agreeable-panda','agreeable-parrot','agreeable-peacock','agreeable-seal','agreeable-sheep','agreeable-skunk','ambitious-alpaca','ambitious-coyote','ambitious-crab','ambitious-elephant','ambitious-falcon','ambitious-ferret','ambitious-horse','ambitious-hummingbird','ambitious-impala','ambitious-kangaroo','ambitious-lemur','ambitious-leopard','ambitious-lion','ambitious-llama','ambitious-lobster','ambitious-monkey','ambitious-ox','ambitious-panda','ambitious-parrot','ambitious-peacock','ambitious-seal','ambitious-sheep','ambitious-skunk','brave-alpaca','brave-coyote','brave-crab','brave-elephant','brave-falcon','brave-ferret','brave-horse','brave-hummingbird','brave-impala','brave-kangaroo','brave-lemur','brave-leopard','brave-lion','brave-llama','brave-lobster','brave-monkey','brave-ox','brave-panda','brave-parrot','brave-peacock','brave-seal','brave-sheep','brave-skunk','calm-alpaca','calm-coyote','calm-crab','calm-elephant','calm-falcon','calm-ferret','calm-horse','calm-hummingbird','calm-impala','calm-kangaroo','calm-lemur','calm-leopard','calm-lion','calm-llama','calm-lobster','calm-monkey','calm-ox','calm-panda','calm-parrot','calm-peacock','calm-seal','calm-sheep','calm-skunk','delightful-alpaca','delightful-coyote','delightful-crab','delightful-elephant','delightful-falcon','delightful-ferret','delightful-horse','delightful-hummingbird','delightful-impala','delightful-kangaroo','delightful-lemur','delightful-leopard','delightful-lion','delightful-llama','delightful-lobster','delightful-monkey','delightful-ox','delightful-panda','delightful-parrot','delightful-peacock','delightful-seal','delightful-sheep','delightful-skunk','eager-alpaca','eager-coyote','eager-crab','eager-elephant','eager-falcon','eager-ferret','eager-horse','eager-hummingbird','eager-impala','eager-kangaroo','eager-lemur','eager-leopard','eager-lion','eager-llama','eager-lobster','eager-monkey','eager-ox','eager-panda','eager-parrot','eager-peacock','eager-seal','eager-sheep','eager-skunk','gentle-alpaca','gentle-coyote','gentle-crab','gentle-elephant','gentle-falcon','gentle-ferret','gentle-horse','gentle-hummingbird','gentle-impala','gentle-kangaroo','gentle-lemur','gentle-leopard','gentle-lion','gentle-llama','gentle-lobster','gentle-monkey','gentle-ox','gentle-panda','gentle-parrot','gentle-peacock','gentle-seal','gentle-sheep','gentle-skunk','happy-alpaca','happy-coyote','happy-crab','happy-elephant','happy-falcon','happy-ferret','happy-horse','happy-hummingbird','happy-impala','happy-kangaroo','happy-lemur','happy-leopard','happy-lion','happy-llama','happy-lobster','happy-monkey','happy-ox','happy-panda','happy-parrot','happy-peacock','happy-seal','happy-sheep','happy-skunk','jolly-alpaca','jolly-coyote','jolly-crab','jolly-elephant','jolly-falcon','jolly-ferret','jolly-horse','jolly-hummingbird','jolly-impala','jolly-kangaroo','jolly-lemur','jolly-leopard','jolly-lion','jolly-llama','jolly-lobster','jolly-monkey','jolly-ox','jolly-panda','jolly-parrot','jolly-peacock','jolly-seal','jolly-sheep','jolly-skunk','kind-alpaca','kind-coyote','kind-crab','kind-elephant','kind-falcon','kind-ferret','kind-horse','kind-hummingbird','kind-impala','kind-kangaroo','kind-lemur','kind-leopard','kind-lion','kind-llama','kind-lobster','kind-monkey','kind-ox','kind-panda','kind-parrot','kind-peacock','kind-seal','kind-sheep','kind-skunk','nice-alpaca','nice-coyote','nice-crab','nice-elephant','nice-falcon','nice-ferret','nice-horse','nice-hummingbird','nice-impala','nice-kangaroo','nice-lemur','nice-leopard','nice-lion','nice-llama','nice-lobster','nice-monkey','nice-ox','nice-panda','nice-parrot','nice-peacock','nice-seal','nice-sheep','nice-skunk','obedient-alpaca','obedient-coyote','obedient-crab','obedient-elephant','obedient-falcon','obedient-ferret','obedient-horse','obedient-hummingbird','obedient-impala','obedient-kangaroo','obedient-lemur','obedient-leopard','obedient-lion','obedient-llama','obedient-lobster','obedient-monkey','obedient-ox','obedient-panda','obedient-parrot','obedient-peacock','obedient-seal','obedient-sheep','obedient-skunk','proud-alpaca','proud-coyote','proud-crab','proud-elephant','proud-falcon','proud-ferret','proud-horse','proud-hummingbird','proud-impala','proud-kangaroo','proud-lemur','proud-leopard','proud-lion','proud-llama','proud-lobster','proud-monkey','proud-ox','proud-panda','proud-parrot','proud-peacock','proud-seal','proud-sheep','proud-skunk','thankful-alpaca','thankful-coyote','thankful-crab','thankful-elephant','thankful-falcon','thankful-ferret','thankful-horse','thankful-hummingbird','thankful-impala','thankful-kangaroo','thankful-lemur','thankful-leopard','thankful-lion','thankful-llama','thankful-lobster','thankful-monkey','thankful-ox','thankful-panda','thankful-parrot','thankful-peacock','thankful-seal','thankful-sheep','thankful-skunk','witty-alpaca','witty-coyote','witty-crab','witty-elephant','witty-falcon','witty-ferret','witty-horse','witty-hummingbird','witty-impala','witty-kangaroo','witty-lemur','witty-leopard','witty-lion','witty-llama','witty-lobster','witty-monkey','witty-ox','witty-panda','witty-parrot','witty-peacock','witty-seal','witty-sheep','witty-skunk','wonderful-alpaca','wonderful-coyote','wonderful-crab','wonderful-elephant','wonderful-falcon','wonderful-ferret','wonderful-horse','wonderful-hummingbird','wonderful-impala','wonderful-kangaroo','wonderful-lemur','wonderful-leopard','wonderful-lion','wonderful-llama','wonderful-lobster','wonderful-monkey','wonderful-ox','wonderful-panda','wonderful-parrot','wonderful-peacock','wonderful-seal','wonderful-sheep','wonderful-skunk','zealous-alpaca','zealous-coyote','zealous-crab','zealous-elephant','zealous-falcon','zealous-ferret','zealous-horse','zealous-hummingbird','zealous-impala','zealous-kangaroo','zealous-lemur','zealous-leopard','zealous-lion','zealous-llama','zealous-lobster','zealous-monkey','zealous-ox','zealous-panda','zealous-parrot','zealous-peacock','zealous-seal','zealous-sheep','zealous-skunk'};
List<String> adjectives = new List<String> {'aggressive','agreeable','ambitious','brave','calm','delightful','eager','gentle','happy','jolly','kind','nice','obedient','proud','thankful','witty','wonderful','zealous'};
List<String> animals = new List<String> {'alpaca','coyote','crab','elephant','falcon','ferret','horse','hummingbird','impala','kangaroo','lemur','leopard','lion','llama','lobster','monkey','ox','panda','parrot','peacock','seal','sheep','skunk'};
List<String> result = orgNames(adjectives, animals);
System.assertEquals(expected, new Set<String>(result), 'result did not contain same values as set of 414 expected values');
*/
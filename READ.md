# Getting and Cleaning Data

The script, ```run_analysis.R``` prepares tidy data that can be used for later analysis.

## run_analysis.R

source ```"run_analysis.R``` will automatically execute the full script in the following order.
* Downloads and reads the training and test sets
* Merges the training and the test sets to create one data set
* Extracts only the measurements on the mean and standard deviation for each measurement
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data with descriptive activity names
* Creates a second, independent tidy data set with the average of each variable for each activity and subject

### Steps required to execute this project

1. Create a parent folder for this project.
2. Place ```run_analysis.R```in the parent folder.
3. Run source("run_analysis.R"). This will generate 

```
Give examples
```

### Installing

A step by step series of examples that tell you have to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc

node("ruby1") {
    checkout scm
    stage("build") {
        sh 'bundle install'
        sh 'bundle exec jekyll build'
        sh  'pwd'
        stash includes: '_site/**/*', name: 'jekfilx'
    }
}
node("apache1") {
    stage("run") {
        sh 'ls -la'
        unstash 'jekfilx'
        sh 'ls -la'
        sh 'rm -rf /var/www/html'
        sh 'mv ./_site /var/www/html'
    }
}
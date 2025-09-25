    import SwiftUI

    struct ContentView: View {
        var body: some View {
            TabView {
                AcademicsView()
                    .tabItem {
                        Label("Academics", systemImage: "book.fill")
                    }

                AthleticsView()
                    .tabItem {
                        Label("Athletics", systemImage: "sportscourt.fill")
                    }

                EventsView()
                    .tabItem {
                        Label("Events", systemImage: "calendar")
                    }
            }
        }
    }
    //Comment
    // MARK: - Academics View

    struct AcademicsView: View {
        var body: some View {
            NavigationView {
                List {
                    Section(header: Text("News & Updates")) {
                        Text("📚 New Semester Starts Sept 1st")
                        Text("🧪 AP Exam Results Released")
                        Text("👥 Parent-Teacher Conference This Week")
                    }

                    Section(header: Text("Resources")) {
                        NavigationLink("📖 Course Catalog", destination: DetailView(title: "Course Catalog"))
                        NavigationLink("🗓 Academic Calendar", destination: DetailView(title: "Academic Calendar"))
                        NavigationLink("📆 Tutoring Schedule", destination: DetailView(title: "Tutoring Schedule"))
                    }
                }
                .navigationTitle("Academics")
            }
        }
    }

    // MARK: - Athletics View

    struct AthleticsView: View {
        var body: some View {
            NavigationView {
                List {
                    Section(header: Text("Upcoming Games")) {
                        Text("🏈 Football vs Central HS - Sept 5")
                        Text("🏐 Volleyball at West HS - Sept 6")
                        Text("🏃‍♂️ Cross Country Meet - Sept 7")
                    }

                    Section(header: Text("Team Pages")) {
                        NavigationLink("Baseball", destination: DetailView(title: "Baseball Team Page"))
                        NavigationLink("Basketball", destination: DetailView(title: "Basketball Team Page"))
                        NavigationLink("Cross Country", destination: DetailView(title: "Cross Country Team Page"))
                        NavigationLink("Football", destination: DetailView(title: "Football Team Page"))
                        NavigationLink("Softball", destination: DetailView(title: "Softball Team Page"))
                        NavigationLink("Soccer", destination: DetailView(title: "Soccer Team Page"))
                        NavigationLink("Track", destination: DetailView(title: "Track Team Page"))
                        NavigationLink("Volleyball", destination: DetailView(title: "Volleyball Team Page"))
                    }
                }
                .navigationTitle("Athletics")
            }
        }
    }

    // MARK: - Events View

    struct EventsView: View {
        var body: some View {
            NavigationView {
                List {
                    Section(header: Text("Featured Events")) {
                        Text("🎉 Homecoming - Sept 20")
                        Text("🍔 Alumni BBQ - Oct 3")
                        Text("🎭 School Play - Oct 15")
                    }

                    Section(header: Text("Get Involved")) {
                        NavigationLink("Volunteer Opportunities", destination: DetailView(title: "Volunteer Info"))
                        NavigationLink("PTA Meetings", destination: DetailView(title: "PTA Meeting Schedule"))
                        NavigationLink("Fundraisers", destination: DetailView(title: "Fundraiser Events"))
                    }
                }
                .navigationTitle("Events")
            }
        }
    }

    // MARK: - Reusable Detail View

    struct DetailView: View {
        let title: String

        var body: some View {
            Text("Details for \(title)")
                .font(.title)
                .padding()
        }
    }

    // MARK: - Preview

    #Preview {
        ContentView()
    }


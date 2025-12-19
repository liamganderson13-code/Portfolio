git init
git add .
git commit -m "Initial portfolio"
git branch -M main
git remote add origin https://github.com/Liamganderson/portfolio.git
git push -u origin main

import { motion } from "framer-motion";
import { Card, CardContent } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Mail, Film, User, Briefcase } from "lucide-react";

export default function PortfolioLayout() {
  return (
    <div className="min-h-screen bg-neutral-950 text-neutral-100">
      {/* Hero Section */}
      <section className="flex flex-col items-center justify-center text-center px-6 py-32">
        <motion.h1
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          className="text-5xl md:text-7xl font-bold mb-6"
        >
          Liam Anderson
        </motion.h1>
        <p className="text-lg md:text-xl text-neutral-400 max-w-2xl mb-8">
          Filmmaker • Gaffer • Creative Storyteller
        </p>
        <Button size="lg" className="rounded-2xl">Contact Me</Button>
      </section>

      {/* About Section */}
      <section className="max-w-5xl mx-auto px-6 py-24" id="about">
        <h2 className="text-3xl font-semibold mb-8 flex items-center gap-3"><User /> About</h2>
        <p className="text-neutral-300 leading-relaxed">
          I’m a filmmaker and lighting technician with a focus on narrative storytelling and
          practical, motivated lighting. I work across indie film, music videos, and commercial
          projects.
        </p>
      </section>

      {/* Work Section */}
      <section className="max-w-6xl mx-auto px-6 py-24" id="work">
        <h2 className="text-3xl font-semibold mb-12 flex items-center gap-3"><Film /> Selected Work</h2>
        <div className="grid md:grid-cols-3 gap-8">
          {[1, 2, 3].map((item) => (
            <Card key={item} className="bg-neutral-900 border-neutral-800 rounded-2xl">
              <CardContent className="p-6">
                <div className="aspect-video bg-neutral-800 rounded-xl mb-4" />
                <h3 className="text-xl font-medium mb-2">Project Title</h3>
                <p className="text-neutral-400 text-sm">
                  Short description of the project, your role, and notable details.
                </p>
              </CardContent>
            </Card>
          ))}
        </div>
      </section>

      {/* Services / Experience */}
      <section className="max-w-5xl mx-auto px-6 py-24" id="services">
        <h2 className="text-3xl font-semibold mb-12 flex items-center gap-3"><Briefcase /> Services</h2>
        <div className="grid md:grid-cols-2 gap-8">
          <Card className="bg-neutral-900 border-neutral-800 rounded-2xl">
            <CardContent className="p-6">
              <h3 className="text-xl font-medium mb-2">G&E / Lighting</h3>
              <p className="text-neutral-400 text-sm">
                On-set lighting support, rigging, and small crew leadership for indie productions.
              </p>
            </CardContent>
          </Card>
          <Card className="bg-neutral-900 border-neutral-800 rounded-2xl">
            <CardContent className="p-6">
              <h3 className="text-xl font-medium mb-2">Directing & DP</h3>
              <p className="text-neutral-400 text-sm">
                Narrative-focused directing and cinematography with a grounded, naturalistic style.
              </p>
            </CardContent>
          </Card>
        </div>
      </section>

      {/* Contact Section */}
      <section className="max-w-4xl mx-auto px-6 py-24 text-center" id="contact">
        <h2 className="text-3xl font-semibold mb-6 flex justify-center items-center gap-3"><Mail /> Get in Touch</h2>
        <p className="text-neutral-400 mb-8">
          Available for freelance and collaborative projects.
        </p>
        <Button size="lg" className="rounded-2xl">Email Me</Button>
      </section>

      {/* Footer */}
      <footer className="text-center text-neutral-500 py-12">
        © {new Date().getFullYear()} Liam Anderson
      </footer>
    </div>
  );
}

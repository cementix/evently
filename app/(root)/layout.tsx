import type { Metadata } from "next";
import "../globals.css";
import Header from "@/components/shared/Header";
import Footer from "@/components/shared/Footer";

export const metadata: Metadata = {
  title: "Evently",
  description: "Evently is an app for event management.",
  icons: {
    icon: "/assets/images/logo.svg",
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <div>
      <Header />
      <body>{children}</body>
      <Footer />
    </div>
  );
}

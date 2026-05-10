import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  output: "standalone", // This is required for optimized Docker builds
};

export default nextConfig;
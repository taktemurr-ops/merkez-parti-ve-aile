import 'package:flutter/material.dart';
import 'package:studio_core/app/approved_hub.dart';

/// Onaylı tasarım (Oyun Merkezleri · Tasarım Örnekleri).
const approvedStyle = ApprovedHubStyle(
  background: [Color(0xFFC23A7A), Color(0xFF7A1E78), Color(0xFF34104E)],
  accent: Color(0xFFFFC23A),
  card: Color(0xFF8E2A86),
  play: Color(0xFFFF8A2E),
  number: Color(0xFFFFD84A),
  blocks: [ApprovedBlock.chips, ApprovedBlock.tournament, ApprovedBlock.featured, ApprovedBlock.weeklyQuest],
  featuredKey: 'featured',
  featured: ['oyun-isim-sehir', 'oyun-sessiz-sinema', 'oyun-casus-kim'],
);

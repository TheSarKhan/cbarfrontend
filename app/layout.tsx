import type { Metadata } from 'next';
import './globals.css';
export const metadata: Metadata = { title: 'Kampus · İdarəetmə', description: 'Kampus demo cüzdanının idarəetmə paneli' };
export default function Layout({children}:{children:React.ReactNode}) { return <html lang="az"><body>{children}</body></html> }

# Resume Parser

A Flask-based web application that extracts and displays key information from resume files (PDF, DOCX, TXT) with intelligent parsing and structured output.

## Features

### 🔍 **Intelligent Information Extraction**
- **Full Name**: Advanced name detection with filtering of technical terms, job titles, and document headers
- **Email Address**: Comprehensive email extraction including hyperlinked emails, encoded formats, and various styling
- **Phone Number**: Multi-format phone number detection and standardization
- **Education**: Educational background parsing with degree classification and institution detection
- **Certifications**: Professional certification and license identification
- **Skills**: Categorized skill extraction (Technical, Functional, Domain)
- **Work Experience**: Employment history and professional experience parsing

### 📁 **File Format Support**
- **PDF Files**: Advanced PDF text extraction with multiple parsing methods
- **DOCX Files**: Microsoft Word document processing
- **TXT Files**: Plain text file support

### 🎯 **Advanced Features**
- **Duplicate Prevention**: Intelligent deduplication for names and other fields
- **Hyperlink Handling**: Extracts emails from hyperlinked text and encoded formats
- **Section Recognition**: Automatically identifies and categorizes resume sections
- **Keyword-Based Extraction**: External keyword files for easy customization
- **Smart Filtering**: Filters out non-relevant content like addresses, job titles from name extraction

### 🎨 **User Interface**
- **Clean Web Interface**: User-friendly file upload and results display
- **Structured Output**: Organized display of extracted information
- **Real-time Processing**: Instant results after file upload
- **Debug Mode**: Detailed logging for troubleshooting

## Installation

### Prerequisites
- Python 3.7+
- pip (Python package installer)

### Setup Instructions

1. **Clone or Download the Project**
   ```bash
   git clone <repository-url>
   cd resume-parser
   ```

2. **Install Dependencies**
   ```bash
   pip install -r requirements.txt
   ```

3. **Verify Installation**
   ```bash
   python resume_parser.py
   ```

4. **Access the Application**
   - Open your web browser
   - Navigate to `http://127.0.0.1:5000`

## Usage

### Basic Usage
1. Start the Flask application:
   ```bash
   python resume_parser.py
   ```

2. Open your web browser and go to `http://127.0.0.1:5000`

3. Upload a resume file (PDF, DOCX, or TXT)

4. View the extracted information in an organized format

### Alternative Launch Methods
- **Windows Batch File**: Double-click `run_resume_parser.bat`
- **Direct Python Execution**: Run `python resume_parser.py` from command line

## Project Structure

```
resume-parser/
├── resume_parser.py          # Main Flask application
├── requirements.txt          # Python dependencies
├── README.md                 # Project documentation
├── run_resume_parser.bat     # Windows batch launcher
├── templates/
│   ├── resume_parser.html    # Main HTML template
│   └── resume_parser - New layout.html  # Alternative layout
├── keywords/                 # External keyword files
│   ├── cert_keywords.txt     # Certification keywords
│   ├── education_keywords.txt # Education-related terms
│   ├── technical_skills.txt  # Technical skills keywords
│   ├── functional_skills.txt # Functional skills keywords
│   └── domain_skills.txt     # Domain-specific skills
└── resume-upload.html        # Standalone upload page
```

## Configuration

### Keyword Customization
The parser uses external keyword files for better accuracy and easy customization:

- **`keywords/cert_keywords.txt`**: Add certification names and professional licenses
- **`keywords/education_keywords.txt`**: Educational degrees and qualifications
- **`keywords/technical_skills.txt`**: Programming languages, frameworks, tools
- **`keywords/functional_skills.txt`**: Soft skills and functional competencies
- **`keywords/domain_skills.txt`**: Industry and domain-specific skills

### File Upload Limits
- Maximum file size: 16MB
- Supported formats: PDF, DOCX, TXT

## Technical Details

### Dependencies
- **Flask 2.3.3**: Web framework
- **PyPDF2 3.0.1**: PDF text extraction
- **python-docx 0.8.11**: DOCX file processing
- **Werkzeug 2.3.7**: WSGI utilities

### Key Components

#### Name Extraction
- Filters document headers ("Curriculum Vitae", "Resume", etc.)
- Excludes technical terms and job titles
- Handles table-formatted contact information
- Prevents duplicate name extraction
- Scoring system for name candidate validation

#### Email Extraction
- Standard email pattern matching
- Hyperlinked email detection (HTML, Markdown)
- URL-encoded and HTML entity decoding
- Multiple regex patterns for various formats
- Whitespace and formatting tolerance

#### Skills Categorization
- **Technical Skills**: Programming languages, frameworks, databases
- **Functional Skills**: Project management, communication, leadership
- **Domain Skills**: Industry-specific knowledge and expertise

#### Education Parsing
- Degree classification and validation
- Institution name filtering
- Multiple education format support
- Cross-contamination prevention

## Troubleshooting

### Common Issues

1. **"Module not found" errors**
   ```bash
   pip install -r requirements.txt
   ```

2. **File upload fails**
   - Check file size (must be < 16MB)
   - Verify file format (PDF, DOCX, TXT only)
   - Ensure file is not corrupted

3. **Poor extraction results**
   - Check debug output in console
   - Verify resume format is standard
   - Update keyword files for better matching

4. **Application won't start**
   - Ensure no other application is using port 5000
   - Check Python version compatibility (3.7+)

### Debug Mode
The application runs in debug mode by default, providing detailed console output for troubleshooting extraction issues.

## Customization

### Adding New Keywords
1. Edit the appropriate keyword file in the `keywords/` directory
2. Add one keyword per line
3. Restart the application to load new keywords

### Modifying Extraction Logic
Key functions to modify:
- `extract_name()`: Name extraction logic
- `extract_email()`: Email detection patterns
- `extract_skills()`: Skills categorization
- `extract_education()`: Education parsing
- `extract_certificates()`: Certification detection

### UI Customization
- Modify `templates/resume_parser.html` for layout changes
- Update CSS styles for visual customization
- Add new fields or modify display order

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is open source. Feel free to use, modify, and distribute according to your needs.

## Support

For issues, questions, or contributions:
1. Check the troubleshooting section
2. Review debug output in console
3. Ensure all dependencies are properly installed
4. Verify input file format and content

## Version History

- **Current Version**: Enhanced resume parser with intelligent extraction
- **Features Added**: Hyperlinked email support, duplicate prevention, enhanced name filtering
- **Improvements**: Better accuracy, external keyword files, debug capabilities

---

**Note**: This parser works best with standard resume formats. For optimal results, ensure resumes have clear section headers and standard formatting.

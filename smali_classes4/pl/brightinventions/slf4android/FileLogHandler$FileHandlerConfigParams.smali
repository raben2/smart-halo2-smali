.class Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;
.super Ljava/lang/Object;
.source "FileLogHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/brightinventions/slf4android/FileLogHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileHandlerConfigParams"
.end annotation


# instance fields
.field append:Z

.field count:I

.field fileName:Ljava/lang/String;

.field formatter:Lpl/brightinventions/slf4android/LogRecordFormatter;

.field limit:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static defaults(Landroid/content/Context;)Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;
    .locals 4

    .line 172
    new-instance v0, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;

    invoke-direct {v0}, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;-><init>()V

    const/high16 v1, 0x80000

    .line 173
    iput v1, v0, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->limit:I

    const/4 v1, 0x5

    .line 174
    iput v1, v0, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->count:I

    .line 175
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".%g.%u"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".log"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->fileName:Ljava/lang/String;

    const/4 p0, 0x1

    .line 177
    iput-boolean p0, v0, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->append:Z

    return-object v0
.end method


# virtual methods
.method getFormatterAdapter()Lpl/brightinventions/slf4android/LogRecordFormatterUtilFormatterAdapter;
    .locals 2

    .line 182
    new-instance v0, Lpl/brightinventions/slf4android/LogRecordFormatterUtilFormatterAdapter;

    iget-object v1, p0, Lpl/brightinventions/slf4android/FileLogHandler$FileHandlerConfigParams;->formatter:Lpl/brightinventions/slf4android/LogRecordFormatter;

    invoke-direct {v0, v1}, Lpl/brightinventions/slf4android/LogRecordFormatterUtilFormatterAdapter;-><init>(Lpl/brightinventions/slf4android/LogRecordFormatter;)V

    return-object v0
.end method

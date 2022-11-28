.class Lpl/brightinventions/slf4android/FileHandlerExpose;
.super Ljava/lang/Object;
.source "FileHandlerExpose.java"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static fileNameField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lpl/brightinventions/slf4android/FileHandlerExpose;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lpl/brightinventions/slf4android/FileHandlerExpose;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getFileNameField(Ljava/util/logging/FileHandler;)Ljava/lang/reflect/Field;
    .locals 2

    monitor-enter p0

    .line 31
    :try_start_0
    sget-object v0, Lpl/brightinventions/slf4android/FileHandlerExpose;->fileNameField:Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 34
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "fileName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lpl/brightinventions/slf4android/FileHandlerExpose;->fileNameField:Ljava/lang/reflect/Field;

    .line 35
    sget-object v0, Lpl/brightinventions/slf4android/FileHandlerExpose;->fileNameField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catch_0
    :try_start_2
    sget-object v0, Lpl/brightinventions/slf4android/FileHandlerExpose;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Could not find field \'fileName\' inside class {}"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    :cond_0
    :goto_0
    sget-object p1, Lpl/brightinventions/slf4android/FileHandlerExpose;->fileNameField:Ljava/lang/reflect/Field;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getCurrentFileName(Ljava/util/logging/FileHandler;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    .line 17
    invoke-direct {p0, p1}, Lpl/brightinventions/slf4android/FileHandlerExpose;->getFileNameField(Ljava/util/logging/FileHandler;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 22
    sget-object v1, Lpl/brightinventions/slf4android/FileHandlerExpose;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Cant read \'fileName\' field value from {}"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileHandler must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

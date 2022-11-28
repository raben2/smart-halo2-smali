.class public abstract Lcom/instabug/library/util/memory/predicate/FileMemoryAvailablePredicate;
.super Lcom/instabug/library/util/memory/predicate/MemoryAvailablePredicate;
.source "FileMemoryAvailablePredicate.java"


# instance fields
.field protected final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/util/memory/predicate/MemoryAvailablePredicate;-><init>()V

    iput-object p1, p0, Lcom/instabug/library/util/memory/predicate/FileMemoryAvailablePredicate;->file:Ljava/io/File;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/util/memory/predicate/FileMemoryAvailablePredicate;->file:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "null file reference"

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "the file object maybe representing a folder not a file"

    return-object v0

    :cond_1
    const-string v0, "the file object is not a text file"

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/io/File;)Z
.end method

.method public check()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/util/memory/predicate/FileMemoryAvailablePredicate;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/util/memory/predicate/FileMemoryAvailablePredicate;->file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/instabug/library/util/memory/predicate/FileMemoryAvailablePredicate;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/instabug/library/util/memory/predicate/FileMemoryAvailablePredicate;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x28

    add-long/2addr v0, v2

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/instabug/library/util/memory/predicate/MemoryAvailablePredicate;->isMemoryAvailable(J)Z

    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is running test, results: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is returning false due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/instabug/library/util/memory/predicate/FileMemoryAvailablePredicate;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

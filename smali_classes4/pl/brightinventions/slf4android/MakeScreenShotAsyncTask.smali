.class public Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;
.super Landroid/os/AsyncTask;
.source "MakeScreenShotAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 18
    sget-object v0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/io/File;
    .locals 7

    const/4 v0, 0x0

    .line 23
    aget-object p1, p1, v0

    .line 25
    instance-of v1, p1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 26
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    .line 27
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const v5, 0x1020002

    .line 28
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 29
    new-array v4, v4, [Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 31
    sget-object v1, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Activity content view is null"

    invoke-interface {v1, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 34
    :cond_0
    new-instance v6, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;

    invoke-direct {v6, p0, v5, v4, v3}, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask$1;-><init>(Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;Landroid/view/View;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 68
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 69
    aget-object v1, v4, v0

    if-eqz v1, :cond_4

    .line 70
    aget-object v0, v4, v0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 76
    new-instance p1, Ljava/io/File;

    const-string v3, "slf4android_screen.png"

    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 80
    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 81
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 82
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 83
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, p1

    goto :goto_1

    .line 87
    :cond_3
    sget-object p1, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Failed to find a directory for screen shot"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 93
    sget-object v0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Failed to create bitmap screen shot file"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 91
    sget-object v0, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Interrupted while waiting for screen shot"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lpl/brightinventions/slf4android/MakeScreenShotAsyncTask;->doInBackground([Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

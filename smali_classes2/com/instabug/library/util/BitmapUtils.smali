.class public Lcom/instabug/library/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;,
        Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;
    }
.end annotation


# static fields
.field private static final ICON_FILE_PREFIX:Ljava/lang/String; = "icon"

.field public static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/library/util/BitmapUtils;->compressBitmapAndSave(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/instabug/library/util/BitmapUtils;->compressQuietly(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/graphics/drawable/Drawable;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/instabug/library/util/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V

    return-void
.end method

.method static synthetic access$300(Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/instabug/library/util/BitmapUtils;->decodeBitmap(Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V

    return-void
.end method

.method static synthetic access$400(II)[F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/instabug/library/util/BitmapUtils;->getTargetDimensions(II)[F

    move-result-object p0

    return-object p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;)I
    .locals 4

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    if-le p0, v1, :cond_1

    .line 8
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 9
    div-int/lit8 p0, p0, 0x2

    .line 13
    :goto_0
    div-int v3, v0, v2

    if-lt v3, v1, :cond_1

    div-int v3, p0, v2

    if-lt v3, v1, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static compressBitmapAndSave(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/instabug/library/util/memory/MemoryGuard;->from(Landroid/content/Context;)Lcom/instabug/library/util/memory/MemoryGuard;

    move-result-object p0

    new-instance v0, Lcom/instabug/library/util/memory/predicate/MemoryNotLowPredicate;

    invoke-direct {v0}, Lcom/instabug/library/util/memory/predicate/MemoryNotLowPredicate;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/instabug/library/util/memory/MemoryGuard;->withPredicate(Lcom/instabug/library/util/memory/predicate/Predicate;)Lcom/instabug/library/util/memory/ActionExecutor;

    move-result-object p0

    new-instance v0, Lcom/instabug/library/util/BitmapUtils$a;

    invoke-direct {v0, p1}, Lcom/instabug/library/util/BitmapUtils$a;-><init>(Ljava/io/File;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/instabug/library/util/memory/ActionExecutor;->doAction(Lcom/instabug/library/util/memory/Action;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static compressBitmapAndSave(Ljava/io/File;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 4
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 15
    :goto_0
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    const/16 v4, 0x384

    if-lt v2, v4, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    if-lt v2, v4, :cond_0

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 21
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 23
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 29
    invoke-static {p0}, Lcom/instabug/library/util/BitmapUtils;->getImageMimeType(Ljava/io/File;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p0

    const/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compressBitmapAndSave bitmap doesn\'t compressed correctly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BitmapUtils"

    .line 35
    invoke-static {v0, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static compressQuietly(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .param p3    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BitmapUtils"

    invoke-static {p2, p1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static decodeBitmap(Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/model/AssetEntity;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 6
    invoke-interface {p1, p0}, Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;->onBitmapReady(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BitmapUtils"

    const-string v1, "Asset Entity downloading got FileNotFoundException error"

    .line 8
    invoke-static {v0, v1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-interface {p1}, Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;->onBitmapFailedToLoad()V

    :goto_0
    return-void
.end method

.method public static decodeSampledBitmapFromLocalPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    invoke-static {v0}, Lcom/instabug/library/util/BitmapUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 11
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V
    .locals 8

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x41c00000    # 24.0f

    .line 5
    invoke-static {v0, p0, p0}, Lcom/instabug/library/util/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;->onBitmapReady(Landroid/graphics/Bitmap;)V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x48

    invoke-static {v0, v1}, Lcom/instabug/library/util/DisplayUtils;->dpToPx(Landroid/content/res/Resources;I)I

    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-gt v4, v0, :cond_2

    if-gt v5, v0, :cond_2

    .line 16
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 17
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 26
    :goto_0
    new-instance p0, Lcom/instabug/library/util/BitmapUtils$f;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/instabug/library/util/BitmapUtils$f;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;IILcom/instabug/library/util/BitmapUtils$OnBitmapReady;Landroid/graphics/Bitmap;)V

    invoke-static {p0}, Lcom/instabug/library/util/threading/PoolProvider;->postMainThreadTask(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static getBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4
    invoke-static {v0, p0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBitmapFromFilePath returns null because of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BitmapUtils"

    .line 11
    invoke-static {v0, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getIconTargetDirectory(J)Ljava/io/File;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;->getVisualUserStepsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getImageMimeType(Ljava/io/File;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method private static getTargetDimensions(II)[F
    .locals 2

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/high16 v1, 0x41c00000    # 24.0f

    if-le p1, p0, :cond_0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    mul-float p0, p0, v1

    const/4 p1, 0x0

    aput p0, v0, p1

    goto :goto_0

    :cond_0
    if-ge p1, p0, :cond_1

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    mul-float p1, p1, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    :cond_1
    :goto_0
    return-object v0

    :array_0
    .array-data 4
        0x41c00000    # 24.0f
        0x41c00000    # 24.0f
    .end array-data
.end method

.method public static loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/library/util/BitmapWorkerTask;

    invoke-direct {v0, p1}, Lcom/instabug/library/util/BitmapWorkerTask;-><init>(Landroid/widget/ImageView;)V

    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;FF)V
    .locals 1

    .line 3
    new-instance v0, Lcom/instabug/library/util/BitmapWorkerTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/instabug/library/util/BitmapWorkerTask;-><init>(Landroid/widget/ImageView;FF)V

    const/4 p1, 0x1

    .line 4
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;FFLcom/instabug/library/util/BitmapWorkerTask$OnImageLoadedListener;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/instabug/library/util/BitmapWorkerTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/instabug/library/util/BitmapWorkerTask;-><init>(Landroid/widget/ImageView;FFLcom/instabug/library/util/BitmapWorkerTask$OnImageLoadedListener;)V

    const/4 p1, 0x1

    .line 8
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;Lcom/instabug/library/util/BitmapWorkerTask$OnImageLoadedListener;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    new-instance v0, Lcom/instabug/library/util/BitmapWorkerTask;

    invoke-direct {v0, p1, p2}, Lcom/instabug/library/util/BitmapWorkerTask;-><init>(Landroid/widget/ImageView;Lcom/instabug/library/util/BitmapWorkerTask$OnImageLoadedListener;)V

    const/4 p1, 0x1

    .line 6
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static loadBitmapForAsset(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->createEmptyEntity(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;)Lcom/instabug/library/model/AssetEntity;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/instabug/library/util/BitmapUtils$e;

    invoke-direct {p2, p3}, Lcom/instabug/library/util/BitmapUtils$e;-><init>(Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V

    invoke-static {p0, p1, p2}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->getAssetEntity(Landroid/content/Context;Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;)V

    :cond_0
    return-void
.end method

.method public static loadBitmapWithFallback(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/library/util/BitmapWorkerTask;

    invoke-direct {v0, p1, p2}, Lcom/instabug/library/util/BitmapWorkerTask;-><init>(Landroid/widget/ImageView;I)V

    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static maskBitmap(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instabug/library/settings/SettingsManager;Landroid/graphics/Canvas;)V
    .locals 7
    .param p2    # Lcom/instabug/library/settings/SettingsManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 1
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/instabug/library/settings/SettingsManager;->getPrivateViews()Ljava/util/Collection;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    new-array v1, v1, [I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 10
    invoke-static {v0}, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker;->getVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 15
    invoke-static {p0, p2}, Lcom/instabug/library/instacapture/screenshot/FieldHelper;->getRootViews(Landroid/app/Activity;[I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;

    .line 18
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {p2}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 21
    invoke-static {v2}, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22
    invoke-static {v2}, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker;->getVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 23
    new-array v3, v1, [I

    .line 24
    invoke-virtual {p2}, Lcom/instabug/library/instacapture/screenshot/RootViewInfo;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 25
    iget v4, v2, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    aget v6, v3, v5

    add-int/2addr v4, v6

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 26
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    aget v3, v3, v5

    add-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 27
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    float-to-int v0, p1

    float-to-int v1, p2

    .line 1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_2

    cmpl-float v1, p1, p2

    if-lez v1, :cond_2

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_3

    cmpg-float v1, p1, p2

    if-gez v1, :cond_3

    return-object p0

    .line 10
    :cond_3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {v2, p2, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 19
    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p0, v2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/util/BitmapUtils$c;

    invoke-direct {v0, p1, p0, p2}, Lcom/instabug/library/util/BitmapUtils$c;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postBitmapTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/content/Context;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/instabug/library/util/BitmapUtils$g;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/instabug/library/util/BitmapUtils$g;-><init>(Landroid/net/Uri;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postBitmapTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static saveBitmapAsPNG(Landroid/graphics/Bitmap;ILjava/io/File;Ljava/lang/String;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/instabug/library/util/BitmapUtils$b;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/instabug/library/util/BitmapUtils$b;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V

    invoke-static {v6}, Lcom/instabug/library/util/threading/PoolProvider;->postBitmapTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveDrawableBitmap(Landroid/graphics/drawable/Drawable;JLcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/instabug/library/util/BitmapUtils$d;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/instabug/library/util/BitmapUtils$d;-><init>(JLandroid/graphics/drawable/Drawable;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postBitmapTask(Ljava/lang/Runnable;)V

    return-void
.end method

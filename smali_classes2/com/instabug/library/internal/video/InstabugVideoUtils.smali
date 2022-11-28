.class public Lcom/instabug/library/internal/video/InstabugVideoUtils;
.super Ljava/lang/Object;
.source "InstabugVideoUtils.java"


# annotations
.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "RV_RETURN_VALUE_IGNORED_BAD_PRACTICE"
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "InstabugVideoUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RESOURCE_LEAK"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    .line 6
    new-instance v2, Landroid/media/MediaMuxer;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v4, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v1, :cond_3

    .line 12
    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    const-string v8, "mime"

    .line 13
    invoke-virtual {v7, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "audio/"

    .line 15
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "video/"

    .line 17
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 21
    invoke-virtual {v0, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 22
    invoke-virtual {v2, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v6

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "max-input-size"

    .line 24
    invoke-virtual {v7, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "max-input-size"

    .line 25
    invoke-virtual {v7, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    if-le v6, v5, :cond_2

    move v5, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-gez v5, :cond_4

    const/16 v5, 0x1000

    .line 34
    :cond_4
    new-instance p4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 35
    invoke-virtual {p4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p5, 0x18

    .line 36
    invoke-virtual {p4, p5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p5

    .line 38
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    if-eqz p5, :cond_5

    .line 40
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    if-ltz p4, :cond_5

    .line 42
    invoke-virtual {v2, p4}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_5
    if-lez p2, :cond_6

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p4, p2

    const/4 p2, 0x2

    .line 46
    invoke-virtual {v0, p4, p5, p2}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 54
    :cond_6
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 55
    new-instance p4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 57
    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p5, 0x0

    .line 59
    :cond_7
    :goto_2
    :try_start_1
    iput v3, p4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 60
    invoke-virtual {v0, p2, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iput v1, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v1, :cond_8

    .line 62
    iput v3, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_3

    .line 65
    :cond_8
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iput-wide v4, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-lez p3, :cond_9

    mul-int/lit16 v1, p3, 0x3e8

    int-to-long v7, v1

    cmp-long v1, v4, v7

    if-lez v1, :cond_9

    .line 81
    :goto_3
    invoke-virtual {v2}, Landroid/media/MediaMuxer;->stop()V

    .line 84
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    if-eqz p5, :cond_a

    goto :goto_5

    .line 86
    :cond_9
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v1

    iput v1, p4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 87
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v1

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 90
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p2, p4}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p5, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    const/4 p5, 0x1

    goto :goto_7

    :catch_0
    const/4 v3, 0x1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_1
    move v3, p5

    goto :goto_4

    :catchall_2
    move-exception p0

    const/4 p5, 0x0

    goto :goto_7

    :catch_2
    :goto_4
    :try_start_3
    const-string p0, "InstabugVideoUtils"

    const-string p1, "The source video file is malformed"

    .line 105
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_a

    .line 108
    :goto_5
    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    const-string p0, "InstabugVideoUtils"

    const-string p1, "The muxer has been released!"

    .line 109
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    const-string p0, "InstabugVideoUtils"

    const-string p1, "The muxer skip release/stop since it has no written frames"

    .line 111
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    return-void

    :catchall_3
    move-exception p0

    move p5, v3

    :goto_7
    if-eqz p5, :cond_b

    .line 112
    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    const-string p1, "InstabugVideoUtils"

    const-string p2, "The muxer has been released!"

    .line 113
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    const-string p1, "InstabugVideoUtils"

    const-string p2, "The muxer skip release/stop since it has no written frames"

    .line 115
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    :goto_8
    throw p0
.end method

.method public static getDimensInBounded(DDDD)[D
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation build Landroidx/annotation/Size;
        value = 0x2L
    .end annotation

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    div-double v0, p0, p2

    goto :goto_0

    :cond_0
    div-double v0, p2, p0

    .line 1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    :goto_1
    cmpg-double v2, p4, p0

    if-ltz v2, :cond_2

    cmpg-double v2, p6, p2

    if-gez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 p4, 0x2

    .line 6
    new-array p4, p4, [D

    const/4 p5, 0x0

    aput-wide p0, p4, p5

    const/4 p0, 0x1

    aput-wide p2, p4, p0

    return-object p4

    :cond_2
    :goto_2
    div-double/2addr p0, v0

    div-double/2addr p2, v0

    goto :goto_1
.end method

.method private static getVideoDuration(Ljava/lang/String;)I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RESOURCE_LEAK"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v2, 0x9

    .line 5
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "InstabugVideoUtils"

    const-string v4, "Error: %s occurred during getting video file with path: %s duration"

    const/4 v5, 0x2

    .line 14
    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x1

    aput-object p0, v5, v2

    .line 16
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_0
    return v1

    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 20
    throw p0
.end method

.method private static isDurationMoreThanAutoRecMaxDuration(II)Z
    .locals 0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static startTrim(Ljava/io/File;Ljava/io/File;I)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {p0}, Lcom/instabug/library/util/FileUtils;->isVideoFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/video/InstabugVideoUtils;->getVideoDuration(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-static {v4, p2}, Lcom/instabug/library/internal/video/InstabugVideoUtils;->isDurationMoreThanAutoRecMaxDuration(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int v3, v4, p2

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/instabug/library/internal/video/InstabugVideoUtils;->genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    return-object p1

    :cond_0
    return-object p0
.end method

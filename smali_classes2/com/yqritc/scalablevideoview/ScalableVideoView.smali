.class public Lcom/yqritc/scalablevideoview/ScalableVideoView;
.super Landroid/view/TextureView;
.source "ScalableVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field protected mScalableType:Lcom/yqritc/scalablevideoview/ScalableType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    sget-object p3, Lcom/yqritc/scalablevideoview/ScalableType;->NONE:Lcom/yqritc/scalablevideoview/ScalableType;

    iput-object p3, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mScalableType:Lcom/yqritc/scalablevideoview/ScalableType;

    if-nez p2, :cond_0

    return-void

    .line 46
    :cond_0
    sget-object p3, Lcom/yqritc/scalablevideoview/R$styleable;->scaleStyle:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 51
    :cond_1
    sget p2, Lcom/yqritc/scalablevideoview/R$styleable;->scaleStyle_scalableType:I

    sget-object p3, Lcom/yqritc/scalablevideoview/ScalableType;->NONE:Lcom/yqritc/scalablevideoview/ScalableType;

    invoke-virtual {p3}, Lcom/yqritc/scalablevideoview/ScalableType;->ordinal()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-static {}, Lcom/yqritc/scalablevideoview/ScalableType;->values()[Lcom/yqritc/scalablevideoview/ScalableType;

    move-result-object p1

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mScalableType:Lcom/yqritc/scalablevideoview/ScalableType;

    return-void
.end method

.method private initializeMediaPlayer()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 113
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 114
    invoke-virtual {p0, p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :goto_0
    return-void
.end method

.method private scaleVideoSize(II)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yqritc/scalablevideoview/Size;-><init>(II)V

    .line 102
    new-instance v1, Lcom/yqritc/scalablevideoview/Size;

    invoke-direct {v1, p1, p2}, Lcom/yqritc/scalablevideoview/Size;-><init>(II)V

    .line 103
    new-instance p1, Lcom/yqritc/scalablevideoview/ScaleManager;

    invoke-direct {p1, v0, v1}, Lcom/yqritc/scalablevideoview/ScaleManager;-><init>(Lcom/yqritc/scalablevideoview/Size;Lcom/yqritc/scalablevideoview/Size;)V

    .line 104
    iget-object p2, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mScalableType:Lcom/yqritc/scalablevideoview/ScalableType;

    invoke-virtual {p1, p2}, Lcom/yqritc/scalablevideoview/ScaleManager;->getScaleMatrix(Lcom/yqritc/scalablevideoview/ScalableType;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p0, p1}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6
    .param p1    # Landroid/content/res/AssetFileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 133
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 80
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->stop()V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->release()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 58
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 59
    iget-object p1, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 93
    invoke-direct {p0, p2, p3}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->scaleVideoSize(II)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, v0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->prepare(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public prepare(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnPreparedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 171
    iget-object p1, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->prepareAsync(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public prepareAsync(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnPreparedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 177
    iget-object p1, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 238
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setAssetData(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->initializeMediaPlayer()V

    .line 149
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->initializeMediaPlayer()V

    .line 144
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->initializeMediaPlayer()V

    .line 160
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->initializeMediaPlayer()V

    .line 155
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->initializeMediaPlayer()V

    .line 138
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setRawData(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public setScalableType(Lcom/yqritc/scalablevideoview/ScalableType;)V
    .locals 1

    .line 164
    iput-object p1, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mScalableType:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 165
    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->getVideoWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->getVideoHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->scaleVideoSize(II)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/yqritc/scalablevideoview/ScalableVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

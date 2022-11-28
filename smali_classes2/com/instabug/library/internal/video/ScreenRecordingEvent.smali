.class public Lcom/instabug/library/internal/video/ScreenRecordingEvent;
.super Ljava/lang/Object;
.source "ScreenRecordingEvent.java"


# static fields
.field public static final RECORDING_CANCELED:I = 0x3

.field public static final RECORDING_ERROR:I = 0x4

.field public static final RECORDING_FILE_READY:I = 0x2

.field public static final RECORDING_FINISHED:I = 0x1

.field public static final RECORDING_PERMISSION_DENIED:I


# instance fields
.field private status:I

.field private videoUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/net/Uri;)V
    .locals 0
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingEvent;->status:I

    .line 3
    iput-object p2, p0, Lcom/instabug/library/internal/video/ScreenRecordingEvent;->videoUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingEvent;->status:I

    return v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingEvent;->videoUri:Landroid/net/Uri;

    return-object v0
.end method

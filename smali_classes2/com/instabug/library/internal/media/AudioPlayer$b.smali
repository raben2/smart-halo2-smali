.class Lcom/instabug/library/internal/media/AudioPlayer$b;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/media/AudioPlayer;->addOnStopListener(Lcom/instabug/library/internal/media/AudioPlayer$OnStopListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/media/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/media/AudioPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer$b;->a:Lcom/instabug/library/internal/media/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer$b;->a:Lcom/instabug/library/internal/media/AudioPlayer;

    invoke-static {p1}, Lcom/instabug/library/internal/media/AudioPlayer;->access$100(Lcom/instabug/library/internal/media/AudioPlayer;)V

    return-void
.end method

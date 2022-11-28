.class Lcom/instabug/library/internal/media/AudioPlayer$a;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/media/AudioPlayer;->prepare(Lcom/instabug/library/internal/media/AudioPlayer$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/media/AudioPlayer$d;

.field final synthetic b:Lcom/instabug/library/internal/media/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/media/AudioPlayer;Lcom/instabug/library/internal/media/AudioPlayer$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer$a;->b:Lcom/instabug/library/internal/media/AudioPlayer;

    iput-object p2, p0, Lcom/instabug/library/internal/media/AudioPlayer$a;->a:Lcom/instabug/library/internal/media/AudioPlayer$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/library/internal/media/AudioPlayer$a;->b:Lcom/instabug/library/internal/media/AudioPlayer;

    iget-object v0, p0, Lcom/instabug/library/internal/media/AudioPlayer$a;->a:Lcom/instabug/library/internal/media/AudioPlayer$d;

    invoke-static {p1, v0}, Lcom/instabug/library/internal/media/AudioPlayer;->access$000(Lcom/instabug/library/internal/media/AudioPlayer;Lcom/instabug/library/internal/media/AudioPlayer$d;)V

    return-void
.end method

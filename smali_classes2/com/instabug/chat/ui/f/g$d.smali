.class Lcom/instabug/chat/ui/f/g$d;
.super Lcom/instabug/library/internal/media/AudioPlayer$OnStopListener;
.source "MessagesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/f/g;->f(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/e/c;

.field final synthetic b:Lcom/instabug/chat/ui/f/g$j;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/g;Ljava/lang/String;Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/instabug/chat/ui/f/g$d;->a:Lcom/instabug/chat/e/c;

    iput-object p4, p0, Lcom/instabug/chat/ui/f/g$d;->b:Lcom/instabug/chat/ui/f/g$j;

    invoke-direct {p0, p2}, Lcom/instabug/library/internal/media/AudioPlayer$OnStopListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$d;->a:Lcom/instabug/chat/e/c;

    sget-object v1, Lcom/instabug/chat/e/c$a;->NONE:Lcom/instabug/chat/e/c$a;

    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/c;->a(Lcom/instabug/chat/e/c$a;)Lcom/instabug/chat/e/c;

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$d;->b:Lcom/instabug/chat/ui/f/g$j;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/g$j;->f:Landroid/widget/ImageView;

    sget v1, Lcom/instabug/chat/R$drawable;->ibg_core_ic_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

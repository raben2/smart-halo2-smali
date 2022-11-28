.class Lcom/instabug/chat/ui/f/d$b;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/f/d;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/ui/f/d;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/f/d$b;->a:Lcom/instabug/chat/ui/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/d$b;->a:Lcom/instabug/chat/ui/f/d;

    invoke-static {v0}, Lcom/instabug/chat/ui/f/d;->a(Lcom/instabug/chat/ui/f/d;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/f/d$b;->a:Lcom/instabug/chat/ui/f/d;

    invoke-static {v0}, Lcom/instabug/chat/ui/f/d;->b(Lcom/instabug/chat/ui/f/d;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/f/b;

    invoke-interface {v0}, Lcom/instabug/chat/ui/f/b;->i()V

    :cond_0
    return-void
.end method

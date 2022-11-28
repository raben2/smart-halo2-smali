.class Lcom/instabug/chat/e/b$c$a;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/e/b$c;->a(Landroid/content/Context;)Lcom/instabug/chat/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/e/b;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/instabug/chat/e/b$c;Lcom/instabug/chat/e/b;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/chat/e/b$c$a;->a:Lcom/instabug/chat/e/b;

    iput-object p3, p0, Lcom/instabug/chat/e/b$c$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/b$c$a;->a:Lcom/instabug/chat/e/b;

    new-instance v1, Lcom/instabug/library/model/State$Builder;

    iget-object v2, p0, Lcom/instabug/chat/e/b$c$a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/instabug/library/model/State$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/instabug/library/model/State$Builder;->build(Z)Lcom/instabug/library/model/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/chat/e/b;->setState(Lcom/instabug/library/model/State;)Lcom/instabug/chat/e/b;

    return-void
.end method

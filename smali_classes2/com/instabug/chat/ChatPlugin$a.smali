.class Lcom/instabug/chat/ChatPlugin$a;
.super Ljava/lang/Object;
.source "ChatPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ChatPlugin;->onNewMessagesReceived(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ChatPlugin;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/chat/ChatPlugin$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/instabug/chat/ChatPlugin$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/chat/f/b;->a()Lcom/instabug/chat/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/ChatPlugin$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/instabug/chat/ChatPlugin$a;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

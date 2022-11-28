.class Lcom/instabug/chat/f/b$b;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Lcom/instabug/chat/f/a$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/f/b;->a(Landroid/app/Activity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/instabug/chat/f/b;


# direct methods
.method constructor <init>(Lcom/instabug/chat/f/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/f/b$b;->b:Lcom/instabug/chat/f/b;

    iput-object p2, p0, Lcom/instabug/chat/f/b$b;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/f/b$b;->b:Lcom/instabug/chat/f/b;

    invoke-static {v0}, Lcom/instabug/chat/f/b;->a(Lcom/instabug/chat/f/b;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/f/b$b;->b:Lcom/instabug/chat/f/b;

    iget-object v1, p0, Lcom/instabug/chat/f/b$b;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/instabug/chat/f/b;->a(Lcom/instabug/chat/f/b;Landroid/app/Activity;)V

    .line 2
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/PresentationManager;->setNotificationShowing(Z)V

    return-void
.end method

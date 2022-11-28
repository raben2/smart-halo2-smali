.class Lcom/instabug/bug/c$b;
.super Ljava/lang/Object;
.source "LiveBugManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/c;->a(Landroid/content/Context;Lcom/instabug/library/model/State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/internal/storage/ProcessedUri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/c;


# direct methods
.method constructor <init>(Lcom/instabug/bug/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/c$b;->a:Lcom/instabug/bug/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/internal/storage/ProcessedUri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/c$b;->a:Lcom/instabug/bug/c;

    invoke-static {v0}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/c;)Lcom/instabug/bug/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/c$b;->a:Lcom/instabug/bug/c;

    invoke-static {v0}, Lcom/instabug/bug/c;->a(Lcom/instabug/bug/c;)Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/library/internal/storage/ProcessedUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->VISUAL_USER_STEPS:Lcom/instabug/library/model/Attachment$Type;

    .line 3
    invoke-virtual {p1}, Lcom/instabug/library/internal/storage/ProcessedUri;->isUriEncrypted()Z

    move-result p1

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lcom/instabug/bug/model/a;->a(Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;Z)Lcom/instabug/bug/model/a;

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/internal/storage/ProcessedUri;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/c$b;->a(Lcom/instabug/library/internal/storage/ProcessedUri;)V

    return-void
.end method

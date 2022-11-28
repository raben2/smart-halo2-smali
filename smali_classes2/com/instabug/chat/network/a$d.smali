.class Lcom/instabug/chat/network/a$d;
.super Ljava/lang/Object;
.source "MessageUploaderHelper.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/network/a;->a(Lcom/instabug/chat/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Ljava/lang/Boolean;",
        "Lcom/instabug/chat/e/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/e/b;

.field final synthetic b:Lcom/instabug/chat/network/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/network/a;Lcom/instabug/chat/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/network/a$d;->b:Lcom/instabug/chat/network/a;

    iput-object p2, p0, Lcom/instabug/chat/network/a$d;->a:Lcom/instabug/chat/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/chat/e/b;)V
    .locals 1

    .line 6
    iget-object p1, p0, Lcom/instabug/chat/network/a$d;->b:Lcom/instabug/chat/network/a;

    const-string v0, "Something went wrong while uploading chat logs"

    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/instabug/chat/network/a$d;->b:Lcom/instabug/chat/network/a;

    const-string v0, "chat logs uploaded successfully, change its state"

    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/instabug/chat/network/a$d;->a:Lcom/instabug/chat/e/b;

    sget-object v0, Lcom/instabug/chat/e/b$a;->SENT:Lcom/instabug/chat/e/b$a;

    invoke-virtual {p1, v0}, Lcom/instabug/chat/e/b;->a(Lcom/instabug/chat/e/b$a;)Lcom/instabug/chat/e/b;

    .line 5
    invoke-static {}, Lcom/instabug/chat/cache/ChatsCacheManager;->saveCacheToDisk()V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/chat/e/b;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/network/a$d;->a(Lcom/instabug/chat/e/b;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/network/a$d;->a(Ljava/lang/Boolean;)V

    return-void
.end method

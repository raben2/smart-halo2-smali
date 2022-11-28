.class Lcom/instabug/apm/i/b$b;
.super Ljava/lang/Object;
.source "APMSyncManagerImpl.java"

# interfaces
.implements Lcom/instabug/library/networkv2/request/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/apm/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/networkv2/request/Request$Callbacks<",
        "Lcom/instabug/library/network/RequestResponse;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/apm/i/b;


# direct methods
.method constructor <init>(Lcom/instabug/apm/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/i/b$b;->a:Lcom/instabug/apm/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/network/RequestResponse;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/instabug/library/network/RequestResponse;->getResponseCode()I

    move-result p1

    const/16 v0, 0x1ad

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/instabug/apm/i/b$b;->a:Lcom/instabug/apm/i/b;

    invoke-static {p1}, Lcom/instabug/apm/i/b;->a(Lcom/instabug/apm/i/b;)Lcom/instabug/apm/logger/a/a;

    move-result-object p1

    const-string v0, "You\u2019ve reached the maximum number of requests in Debug Mode. You can read more about our rate limiting policy at this link: https://docs.instabug.com/docs/android-apm-sdk-debugging"

    invoke-virtual {p1, v0}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/instabug/apm/i/b$b;->a:Lcom/instabug/apm/i/b;

    invoke-static {p1}, Lcom/instabug/apm/i/b;->b(Lcom/instabug/apm/i/b;)Lcom/instabug/apm/f/d/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/instabug/apm/f/d/c;->a(I)V

    .line 10
    iget-object p1, p0, Lcom/instabug/apm/i/b$b;->a:Lcom/instabug/apm/i/b;

    invoke-static {p1}, Lcom/instabug/apm/i/b;->c(Lcom/instabug/apm/i/b;)V

    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/i/b$b;->a:Lcom/instabug/apm/i/b;

    invoke-static {v0}, Lcom/instabug/apm/i/b;->a(Lcom/instabug/apm/i/b;)Lcom/instabug/apm/logger/a/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/apm/logger/a/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/library/network/RequestResponse;

    invoke-virtual {p0, p1}, Lcom/instabug/apm/i/b$b;->a(Lcom/instabug/library/network/RequestResponse;)V

    return-void
.end method

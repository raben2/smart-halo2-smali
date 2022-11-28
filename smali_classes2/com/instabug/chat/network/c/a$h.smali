.class Lcom/instabug/chat/network/c/a$h;
.super Ljava/lang/Object;
.source "MessagingService.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/network/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/instabug/library/network/Request;",
        "Lcom/instabug/library/network/Request;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instabug/chat/network/c/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/chat/network/c/a$h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/network/Request;)Lcom/instabug/library/network/Request;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/network/c/a$h;->a:Ljava/lang/String;

    const-string v1, "push_token"

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/network/Request;->addRequestBodyParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/network/Request;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/network/c/a$h;->a(Lcom/instabug/library/network/Request;)Lcom/instabug/library/network/Request;

    move-result-object p1

    return-object p1
.end method

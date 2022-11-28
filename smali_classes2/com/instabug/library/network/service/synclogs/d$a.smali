.class Lcom/instabug/library/network/service/synclogs/d$a;
.super Ljava/lang/Object;
.source "SyncLogService.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/network/service/synclogs/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/instabug/library/network/RequestResponse;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/network/Request;


# direct methods
.method constructor <init>(Lcom/instabug/library/network/service/synclogs/d;Lcom/instabug/library/network/Request;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/library/network/service/synclogs/d$a;->a:Lcom/instabug/library/network/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/network/RequestResponse;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/instabug/library/network/service/synclogs/d$a;->a:Lcom/instabug/library/network/Request;

    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getFileToUpload()Lcom/instabug/library/network/Request$FileToUpload;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/network/service/synclogs/d$a;->a:Lcom/instabug/library/network/Request;

    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getFileToUpload()Lcom/instabug/library/network/Request$FileToUpload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/network/Request$FileToUpload;->getFilePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/network/RequestResponse;

    invoke-virtual {p0, p1}, Lcom/instabug/library/network/service/synclogs/d$a;->a(Lcom/instabug/library/network/RequestResponse;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

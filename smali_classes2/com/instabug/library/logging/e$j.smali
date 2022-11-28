.class Lcom/instabug/library/logging/e$j;
.super Ljava/lang/Object;
.source "LoggingFileResolver.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/logging/e;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/util/List<",
        "Lcom/instabug/library/model/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(Lcom/instabug/library/logging/e;J)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/instabug/library/logging/e$j;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/library/model/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/instabug/library/model/c$b;

    invoke-direct {v0}, Lcom/instabug/library/model/c$b;-><init>()V

    const-string v1, "End-session"

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/model/c$b;->b(Ljava/lang/String;)Lcom/instabug/library/model/c$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/instabug/library/logging/e$j;->a:J

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/model/c$b;->a(J)Lcom/instabug/library/model/c$b;

    move-result-object v0

    const-string v1, ""

    .line 4
    invoke-virtual {v0, v1}, Lcom/instabug/library/model/c$b;->c(Ljava/lang/String;)Lcom/instabug/library/model/c$b;

    move-result-object v0

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/model/c$b;->a(Ljava/lang/String;)Lcom/instabug/library/model/c$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/instabug/library/model/c$b;->a()Lcom/instabug/library/model/c;

    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/instabug/library/logging/e$j;->a(Ljava/util/List;)V

    return-void
.end method

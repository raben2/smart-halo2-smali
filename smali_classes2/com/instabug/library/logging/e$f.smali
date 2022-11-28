.class Lcom/instabug/library/logging/e$f;
.super Ljava/lang/Object;
.source "LoggingFileResolver.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/logging/e;->b(Lcom/instabug/library/model/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/logging/e;


# direct methods
.method constructor <init>(Lcom/instabug/library/logging/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/logging/e$f;->a:Lcom/instabug/library/logging/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/model/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/logging/e$f;->a:Lcom/instabug/library/logging/e;

    invoke-static {v0, p1}, Lcom/instabug/library/logging/e;->a(Lcom/instabug/library/logging/e;Lcom/instabug/library/model/d;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/library/logging/e$f;->a:Lcom/instabug/library/logging/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instabug/library/logging/e;->a(Lcom/instabug/library/logging/e;Z)Z

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
    check-cast p1, Lcom/instabug/library/model/d;

    invoke-virtual {p0, p1}, Lcom/instabug/library/logging/e$f;->a(Lcom/instabug/library/model/d;)V

    return-void
.end method

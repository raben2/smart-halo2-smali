.class Lcom/instabug/library/invocation/d/d$a;
.super Ljava/lang/Object;
.source "ScreenshotGestureInvoker.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/d/d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/model/session/SessionState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/d/d;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/d/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/d$a;->a:Lcom/instabug/library/invocation/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/model/session/SessionState;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/model/session/SessionState;->START:Lcom/instabug/library/model/session/SessionState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/invocation/d/d$a;->a:Lcom/instabug/library/invocation/d/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/instabug/library/invocation/d/d;->a(Lcom/instabug/library/invocation/d/d;Z)Z

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
    check-cast p1, Lcom/instabug/library/model/session/SessionState;

    invoke-virtual {p0, p1}, Lcom/instabug/library/invocation/d/d$a;->a(Lcom/instabug/library/model/session/SessionState;)V

    return-void
.end method

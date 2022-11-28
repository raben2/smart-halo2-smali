.class Lcom/instabug/library/h$d;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/h;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/tracking/ActivityLifeCycleEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/h;


# direct methods
.method constructor <init>(Lcom/instabug/library/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/h$d;->a:Lcom/instabug/library/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/tracking/ActivityLifeCycleEvent;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/h$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/h$d;->a:Lcom/instabug/library/h;

    invoke-static {p1}, Lcom/instabug/library/h;->b(Lcom/instabug/library/h;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/instabug/library/h$d;->a:Lcom/instabug/library/h;

    invoke-static {p1}, Lcom/instabug/library/h;->a(Lcom/instabug/library/h;)V

    :goto_0
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
    check-cast p1, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    invoke-virtual {p0, p1}, Lcom/instabug/library/h$d;->a(Lcom/instabug/library/tracking/ActivityLifeCycleEvent;)V

    return-void
.end method

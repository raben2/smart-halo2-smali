.class Lcom/instabug/library/invocation/d/c$b;
.super Ljava/lang/Object;
.source "ScreenRecordingFab.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/d/c;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/core/eventbus/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/d/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/c$b;->a:Lcom/instabug/library/invocation/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/core/eventbus/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/a;->a()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$b;->a:Lcom/instabug/library/invocation/d/c;

    invoke-virtual {p1}, Lcom/instabug/library/core/eventbus/a;->a()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/instabug/library/invocation/d/c;->a(Lcom/instabug/library/invocation/d/c;Landroid/content/res/Configuration;)V

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
    check-cast p1, Lcom/instabug/library/core/eventbus/a;

    invoke-virtual {p0, p1}, Lcom/instabug/library/invocation/d/c$b;->a(Lcom/instabug/library/core/eventbus/a;)V

    return-void
.end method

.class Lcom/instabug/chat/g/a$b;
.super Ljava/lang/Object;
.source "ExternalScreenRecordHelper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/g/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/chat/eventbus/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instabug/chat/g/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/g/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/g/a$b;->b:Lcom/instabug/chat/g/a;

    iput-object p2, p0, Lcom/instabug/chat/g/a$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/chat/eventbus/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/g/a$b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/instabug/chat/eventbus/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/g/a$b;->b:Lcom/instabug/chat/g/a;

    invoke-virtual {p1}, Lcom/instabug/chat/eventbus/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/instabug/chat/g/a;->a(Lcom/instabug/chat/g/a;Ljava/lang/String;)V

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
    check-cast p1, Lcom/instabug/chat/eventbus/a;

    invoke-virtual {p0, p1}, Lcom/instabug/chat/g/a$b;->a(Lcom/instabug/chat/eventbus/a;)V

    return-void
.end method

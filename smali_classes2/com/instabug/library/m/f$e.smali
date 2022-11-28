.class Lcom/instabug/library/m/f$e;
.super Ljava/lang/Object;
.source "SessionsSyncManager.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/m/f;->b(Ljava/lang/String;)Lio/reactivex/functions/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instabug/library/m/f;


# direct methods
.method constructor <init>(Lcom/instabug/library/m/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/m/f$e;->b:Lcom/instabug/library/m/f;

    iput-object p2, p0, Lcom/instabug/library/m/f$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/m/f$e;->b:Lcom/instabug/library/m/f;

    iget-object v1, p0, Lcom/instabug/library/m/f$e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instabug/library/m/f;->a(Lcom/instabug/library/m/f;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/instabug/library/m/f$d;
.super Ljava/lang/Object;
.source "SessionsSyncManager.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/m/f;->e()Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/m/f;


# direct methods
.method constructor <init>(Lcom/instabug/library/m/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/m/f$d;->a:Lcom/instabug/library/m/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/m/f$d;->a:Lcom/instabug/library/m/f;

    invoke-static {v0}, Lcom/instabug/library/m/f;->c(Lcom/instabug/library/m/f;)Lcom/instabug/library/internal/utils/PreferencesUtils;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "key_last_batch_synced_at"

    invoke-virtual {v0, v3, v1, v2}, Lcom/instabug/library/internal/utils/PreferencesUtils;->saveOrUpdateLong(Ljava/lang/String;J)V

    .line 2
    invoke-interface {p1}, Lio/reactivex/CompletableEmitter;->onComplete()V

    return-void
.end method

.class Lcom/instabug/library/migration/d$a;
.super Ljava/lang/Object;
.source "SDKAnalyticsMigration.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/migration/d;->migrate()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/instabug/library/migration/AbstractMigration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/migration/d;


# direct methods
.method constructor <init>(Lcom/instabug/library/migration/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/migration/d$a;->a:Lcom/instabug/library/migration/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/instabug/library/migration/AbstractMigration;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/internal/storage/cache/CacheManager;->getInstance()Lcom/instabug/library/internal/storage/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/storage/cache/CacheManager;->invalidateAllCaches()V

    .line 2
    invoke-static {}, Lcom/instabug/library/analytics/util/a;->a()V

    .line 3
    invoke-static {}, Lcom/instabug/library/analytics/util/a;->b()V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/migration/d$a;->a:Lcom/instabug/library/migration/d;

    invoke-static {v0}, Lcom/instabug/library/migration/d;->a(Lcom/instabug/library/migration/d;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/migration/d$a;->a:Lcom/instabug/library/migration/d;

    invoke-static {v0}, Lcom/instabug/library/migration/d;->a(Lcom/instabug/library/migration/d;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/instabug/library/analytics/AnalyticsWrapper;->setBeingCleaned(ZLandroid/content/Context;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/migration/d$a;->a:Lcom/instabug/library/migration/d;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.class final Lcom/instabug/survey/announcements/cache/c$b;
.super Ljava/lang/Object;
.source "NewFeaturesAssetsHelper.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/announcements/cache/c;->a(JLcom/instabug/survey/d/c/e;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/instabug/library/model/AssetEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/d/c/e;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcom/instabug/survey/d/c/e;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/announcements/cache/c$b;->a:Lcom/instabug/survey/d/c/e;

    iput-wide p2, p0, Lcom/instabug/survey/announcements/cache/c$b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/instabug/library/model/AssetEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/survey/announcements/cache/c$b;->a:Lcom/instabug/survey/d/c/e;

    invoke-virtual {v1}, Lcom/instabug/survey/d/c/e;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/model/AssetEntity$AssetType;->IMAGE:Lcom/instabug/library/model/AssetEntity$AssetType;

    .line 5
    invoke-static {v0, v1, v2}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->createEmptyEntity(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;)Lcom/instabug/library/model/AssetEntity;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instabug/survey/announcements/cache/c$b$a;

    invoke-direct {v2, p0, p1}, Lcom/instabug/survey/announcements/cache/c$b$a;-><init>(Lcom/instabug/survey/announcements/cache/c$b;Lio/reactivex/ObservableEmitter;)V

    invoke-static {v1, v0, v2}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->getAssetEntity(Landroid/content/Context;Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;)V

    return-void
.end method

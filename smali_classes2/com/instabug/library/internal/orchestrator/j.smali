.class public Lcom/instabug/library/internal/orchestrator/j;
.super Ljava/lang/Object;
.source "MigrateUserSessionsCountAction.java"

# interfaces
.implements Lcom/instabug/library/internal/orchestrator/Action;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/internal/orchestrator/j;->a:Ljava/lang/String;

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
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getSessionsCount()I

    move-result v0

    iget-object v1, p0, Lcom/instabug/library/internal/orchestrator/j;->a:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/instabug/library/internal/storage/cache/user/UserCacheManager;->getUserSessionCount(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/instabug/library/internal/orchestrator/j;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/instabug/library/internal/storage/cache/user/UserCacheManager;->insertUser(Ljava/lang/String;I)V

    .line 4
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instabug/library/settings/SettingsManager;->updateUserSessionCount(I)V

    return-void
.end method

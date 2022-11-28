.class final Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$c;
.super Ljava/lang/Object;
.source "AnnouncementCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->updateBulk(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$c;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/instabug/survey/announcements/cache/b;->a(Ljava/util/List;)V

    return-void
.end method

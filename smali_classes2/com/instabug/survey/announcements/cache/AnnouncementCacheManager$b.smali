.class final Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$b;
.super Ljava/lang/Object;
.source "AnnouncementCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->updateAnnouncement(Lcom/instabug/survey/d/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/d/c/a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/d/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$b;->a:Lcom/instabug/survey/d/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$b;->a:Lcom/instabug/survey/d/c/a;

    invoke-static {v0}, Lcom/instabug/survey/announcements/cache/b;->c(Lcom/instabug/survey/d/c/a;)J

    return-void
.end method

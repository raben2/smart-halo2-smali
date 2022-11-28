.class final Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$a;
.super Ljava/lang/Object;
.source "AnnouncementCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->insertOrUpdatePausedOrLocale(Lcom/instabug/survey/d/c/a;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/d/c/a;

.field final synthetic b:Z

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/instabug/survey/d/c/a;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$a;->a:Lcom/instabug/survey/d/c/a;

    iput-boolean p2, p0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$a;->b:Z

    iput-boolean p3, p0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$a;->a:Lcom/instabug/survey/d/c/a;

    iget-boolean v1, p0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$a;->b:Z

    iget-boolean v2, p0, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager$a;->c:Z

    invoke-static {v0, v1, v2}, Lcom/instabug/survey/announcements/cache/b;->a(Lcom/instabug/survey/d/c/a;ZZ)J

    return-void
.end method

.class public Lcom/instabug/survey/announcements/ui/activity/c;
.super Ljava/lang/Object;
.source "AnnouncementNavigator.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 12
    invoke-static {p1}, Lcom/instabug/library/util/URLUtil;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 14
    sget p1, Lcom/instabug/survey/R$string;->ib_announcement_redirect_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/survey/announcements/ui/activity/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 20
    :cond_1
    sget p1, Lcom/instabug/survey/R$string;->ib_announcement_redirect_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/instabug/survey/announcements/ui/activity/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;II)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 9
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget p2, Lcom/instabug/survey/R$id;->instabug_fragment_container:I

    .line 10
    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static a(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/d/c/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->p()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/instabug/survey/announcements/ui/activity/c;->b(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/d/c/a;)V

    goto :goto_0

    .line 6
    :cond_1
    sget v0, Lcom/instabug/survey/R$anim;->instabug_anim_flyin_from_bottom:I

    sget v1, Lcom/instabug/survey/R$anim;->instabug_anim_flyout_to_bottom:I

    invoke-static {p0, p1, v0, v1}, Lcom/instabug/survey/announcements/ui/activity/c;->a(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/d/c/a;II)V

    :goto_0
    return-void
.end method

.method private static a(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/d/c/a;II)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->c()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/d/c/c;

    invoke-static {p1}, Lcom/instabug/survey/d/e/a/c/d;->b(Lcom/instabug/survey/d/c/c;)Lcom/instabug/survey/d/e/a/c/d;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/instabug/survey/announcements/ui/activity/c;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static b(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/d/c/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->c()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/d/c/c;

    invoke-static {p1}, Lcom/instabug/survey/d/e/a/b/c;->b(Lcom/instabug/survey/d/c/c;)Lcom/instabug/survey/d/e/a/b/c;

    move-result-object p1

    invoke-static {p0, p1, v0, v0}, Lcom/instabug/survey/announcements/ui/activity/c;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;II)V

    return-void
.end method

.class public Lcom/instabug/bug/h/a;
.super Ljava/lang/Object;
.source "ExtendedBugReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/bug/h/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/instabug/bug/h/a$a;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instabug/bug/h/a$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/bug/model/b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/bug/h/a$a;->ENABLED_WITH_REQUIRED_FIELDS:Lcom/instabug/bug/h/a$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-static {p0, p1}, Lcom/instabug/bug/h/a;->a(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1}, Lcom/instabug/bug/h/a;->a(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/instabug/bug/model/b;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Lcom/instabug/bug/model/b;

    sget v2, Lcom/instabug/bug/R$string;->instabug_str_steps_to_reproduce:I

    .line 8
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v4, Lcom/instabug/bug/R$string;->instabug_str_steps_to_reproduce:I

    .line 9
    invoke-static {v3, v4, p0}, Lcom/instabug/library/util/LocaleUtils;->getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "repro_steps"

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/instabug/bug/model/b;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/String;)V

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v1, Lcom/instabug/bug/model/b;

    sget v2, Lcom/instabug/bug/R$string;->instabug_str_actual_results:I

    .line 18
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v4, Lcom/instabug/bug/R$string;->instabug_str_actual_results:I

    .line 19
    invoke-static {v3, v4, p0}, Lcom/instabug/library/util/LocaleUtils;->getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actual_result"

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/instabug/bug/model/b;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/String;)V

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcom/instabug/bug/model/b;

    sget v2, Lcom/instabug/bug/R$string;->instabug_str_expected_results:I

    .line 28
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v4, Lcom/instabug/bug/R$string;->instabug_str_expected_results:I

    .line 29
    invoke-static {v3, v4, p0}, Lcom/instabug/library/util/LocaleUtils;->getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "expected_result"

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/instabug/bug/model/b;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/String;)V

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

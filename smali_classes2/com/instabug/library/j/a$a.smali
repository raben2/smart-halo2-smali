.class final Lcom/instabug/library/j/a$a;
.super Ljava/lang/Object;
.source "Customizations.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/j/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Locale;

    sget-object v1, Lcom/instabug/library/internal/module/InstabugLocale;->FRENCH:Lcom/instabug/library/internal/module/InstabugLocale;

    invoke-virtual {v1}, Lcom/instabug/library/internal/module/InstabugLocale;->getCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/internal/module/InstabugLocale;->FRENCH:Lcom/instabug/library/internal/module/InstabugLocale;

    .line 2
    invoke-virtual {v2}, Lcom/instabug/library/internal/module/InstabugLocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/instabug/library/Instabug;->setLocale(Ljava/util/Locale;)V

    .line 6
    new-instance v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder;

    invoke-direct {v0}, Lcom/instabug/library/InstabugCustomTextPlaceHolder;-><init>()V

    .line 7
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->INVALID_COMMENT_MESSAGE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    const-string v2, "Hey, \u00e9crivez-nous un message pour nous aider."

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->set(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->INVALID_EMAIL_MESSAGE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    const-string v2, "Oups ! L\u2019email est invalide !, Retentez votre chance."

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->set(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPORT_SUCCESSFULLY_SENT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    const-string v2, "C\u2019est dans la bo\u00eete !\nGr\u00e2ce \u00e0 vous, notre application s\u2019am\u00e9liore !"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->set(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->INVOCATION_HEADER:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    const-string v2, "Bonjour ! Que souhaitez-vous faire?"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->set(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->FEEDBACK_REPORT_HEADER:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    const-string v2, "J\u2019ai une super id\u00e9e !"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->set(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->BUG_REPORT_HEADER:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    const-string v2, "J\u2019ai trouv\u00e9 un bug !"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->set(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)V

    .line 13
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->EMAIL_FIELD_HINT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    const-string v2, "Saisissez votre adresse e-mail"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->set(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->COMMENT_FIELD_HINT_FOR_BUG_REPORT:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    const-string v2, "D\u00e9crivez le bug rencontr\u00e9 en quelques mots. On met les d\u00e9buggers sur le coup !"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->set(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->COMMENT_FIELD_HINT_FOR_FEEDBACK:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    const-string v2, "D\u00e9crivez votre super id\u00e9e en quelques mots. On met les d\u00e9veloppeurs sur le coup !"

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->set(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instabug/library/settings/SettingsManager;->setCustomPlaceHolders(Lcom/instabug/library/InstabugCustomTextPlaceHolder;)V

    .line 20
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->BUG_REPORTING:Lcom/instabug/library/Feature;

    sget-object v2, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 21
    invoke-static {}, Lcom/instabug/library/d;->d()Lcom/instabug/library/d;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature;->CHATS:Lcom/instabug/library/Feature;

    sget-object v2, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/library/d;->a(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    const-string v0, "#DB2B6E"

    .line 24
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 25
    invoke-static {v0}, Lcom/instabug/library/Instabug;->setPrimaryColor(I)V

    return-void
.end method

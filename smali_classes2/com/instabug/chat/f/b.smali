.class public Lcom/instabug/chat/f/b;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation


# static fields
.field private static e:Lcom/instabug/chat/f/b;


# instance fields
.field private a:I

.field private final b:Lcom/instabug/chat/f/a;

.field private c:Lcom/instabug/library/util/InstabugAppData;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/chat/f/a;

    invoke-direct {v0}, Lcom/instabug/chat/f/a;-><init>()V

    iput-object v0, p0, Lcom/instabug/chat/f/b;->b:Lcom/instabug/chat/f/a;

    return-void
.end method

.method private a(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)I"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 84
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/e/d;

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object p1

    .line 85
    new-instance v2, Lcom/instabug/chat/e/d$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/instabug/chat/e/d$a;-><init>(I)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, p1

    const/4 p1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/instabug/chat/e/d;

    .line 88
    invoke-virtual {v4}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 89
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 p1, p1, 0x1

    move-object v2, v4

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/app/NotificationChannel;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 152
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 154
    invoke-static {}, Lcom/instabug/chat/settings/a;->k()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {v0, p3, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0, p2, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :goto_0
    return-object v0
.end method

.method private a(Landroid/content/Context;ILcom/instabug/chat/e/d;)Lcom/instabug/chat/e/f;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 201
    new-instance p2, Lcom/instabug/chat/e/f;

    invoke-direct {p2}, Lcom/instabug/chat/e/f;-><init>()V

    .line 202
    iget-object v0, p0, Lcom/instabug/chat/f/b;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/instabug/chat/e/f;->b(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p3}, Lcom/instabug/chat/e/d;->n()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-direct {p0, p1, v1, v0}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/instabug/chat/e/f;->c(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3}, Lcom/instabug/chat/e/d;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/instabug/chat/e/f;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_0
    new-instance p2, Lcom/instabug/chat/e/f;

    invoke-direct {p2}, Lcom/instabug/chat/e/f;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/instabug/chat/f/b;->d:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/instabug/chat/e/f;->b(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p3}, Lcom/instabug/chat/e/d;->n()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-direct {p0, p1, v0, v1}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/instabug/chat/e/f;->c(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p3}, Lcom/instabug/chat/e/d;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/instabug/chat/e/f;->a(Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static a()Lcom/instabug/chat/f/b;
    .locals 1

    .line 3
    sget-object v0, Lcom/instabug/chat/f/b;->e:Lcom/instabug/chat/f/b;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/instabug/chat/f/b;

    invoke-direct {v0}, Lcom/instabug/chat/f/b;-><init>()V

    sput-object v0, Lcom/instabug/chat/f/b;->e:Lcom/instabug/chat/f/b;

    .line 6
    :cond_0
    sget-object v0, Lcom/instabug/chat/f/b;->e:Lcom/instabug/chat/f/b;

    return-object v0
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 99
    :cond_0
    invoke-static {}, Lcom/instabug/chat/i/b;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/instabug/chat/i/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 91
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/instabug/chat/e/d;

    invoke-virtual {p2}, Lcom/instabug/chat/e/d;->n()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v1, " "

    .line 93
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 94
    sget v1, Lcom/instabug/library/R$string;->instabug_str_notifications_body:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v1, v2

    aget-object p2, p2, v2

    aput-object p2, v1, v0

    .line 97
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1

    .line 98
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/e/d;

    invoke-virtual {p1}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .line 219
    iget v0, p0, Lcom/instabug/chat/f/b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/instabug/chat/f/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/e/d;

    .line 224
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {p1, v0}, Lcom/instabug/chat/ui/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 227
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {p1}, Lcom/instabug/chat/ui/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 231
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)V"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/instabug/library/Feature;->REPLIES:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureEnabled(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/instabug/chat/e/d;

    .line 185
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 186
    iget v2, p0, Lcom/instabug/chat/f/b;->a:I

    invoke-direct {p0, v0, v2, p2}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;ILcom/instabug/chat/e/d;)Lcom/instabug/chat/e/f;

    move-result-object p2

    .line 187
    iget-object v0, p0, Lcom/instabug/chat/f/b;->b:Lcom/instabug/chat/f/a;

    new-instance v2, Lcom/instabug/chat/f/b$b;

    invoke-direct {v2, p0, p1}, Lcom/instabug/chat/f/b$b;-><init>(Lcom/instabug/chat/f/b;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, p2, v2}, Lcom/instabug/chat/f/a;->a(Landroid/app/Activity;Lcom/instabug/chat/e/f;Lcom/instabug/chat/f/a$n;)V

    .line 200
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/instabug/library/PresentationManager;->setNotificationShowing(Z)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 5
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/instabug/chat/settings/a;->d()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/instabug/chat/f/b;->c:Lcom/instabug/library/util/InstabugAppData;

    invoke-virtual {v0}, Lcom/instabug/library/util/InstabugAppData;->getAppIcon()I

    move-result v0

    .line 108
    :cond_1
    invoke-static {}, Lcom/instabug/chat/settings/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 109
    invoke-static {}, Lcom/instabug/chat/settings/a;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "ibg-replies-channel"

    .line 115
    :goto_0
    invoke-static {}, Lcom/instabug/chat/settings/a;->k()Z

    move-result v2

    if-nez v2, :cond_3

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-silent"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    .line 119
    invoke-static {p1, v3, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const/4 v2, 0x2

    .line 121
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 122
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v4, p1, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/instabug/chat/f/b;->c:Lcom/instabug/library/util/InstabugAppData;

    .line 125
    invoke-virtual {v4}, Lcom/instabug/library/util/InstabugAppData;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 128
    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 130
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt p3, v4, :cond_4

    .line 131
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 132
    :cond_4
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p3, v0, :cond_5

    .line 133
    new-array p3, v3, [J

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    .line 134
    :cond_5
    invoke-static {}, Lcom/instabug/chat/settings/a;->k()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 135
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_6
    const-string p3, "notification"

    .line 139
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_8

    .line 143
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_7

    .line 144
    iget-object p3, p0, Lcom/instabug/chat/f/b;->c:Lcom/instabug/library/util/InstabugAppData;

    .line 145
    invoke-virtual {p3}, Lcom/instabug/library/util/InstabugAppData;->getAppName()Ljava/lang/String;

    move-result-object p3

    .line 146
    invoke-direct {p0, v1, p3, v2}, Lcom/instabug/chat/f/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/app/NotificationChannel;

    move-result-object p3

    .line 149
    invoke-virtual {p1, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 151
    :cond_7
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_8
    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/f/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/instabug/chat/f/b;->b()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/f/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/chat/f/b;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 7
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/PresentationManager;->setNotificationShowing(Z)V

    .line 8
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/PresentationManager;->notifyActivityChanged()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .line 61
    invoke-static {p1}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->checkRingerIsOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    sget v0, Lcom/instabug/library/R$raw;->ib_core_sound_new_message:I

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x5

    if-lt v0, v1, :cond_1

    .line 69
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 70
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 71
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 81
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 82
    new-instance v0, Lcom/instabug/chat/f/b$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/chat/f/b$a;-><init>(Lcom/instabug/chat/f/b;Landroid/media/MediaPlayer;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/d;",
            ">;)V"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/instabug/library/util/InstabugAppData;

    invoke-direct {v0, p1}, Lcom/instabug/library/util/InstabugAppData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/chat/f/b;->c:Lcom/instabug/library/util/InstabugAppData;

    const-string v0, ""

    .line 10
    invoke-direct {p0, p2}, Lcom/instabug/chat/f/b;->a(Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/instabug/chat/f/b;->a:I

    .line 11
    iput-object p2, p0, Lcom/instabug/chat/f/b;->d:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0, p1, v2, p2}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {p1}, Lcom/instabug/chat/ui/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 24
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/e/d;

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, v1, p2}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/chat/ui/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 38
    :goto_0
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isAppOnForeground()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 39
    invoke-direct {p0, p1, v1, v0}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 42
    :cond_2
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 44
    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    goto :goto_1

    .line 46
    :cond_3
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getTargetActivity()Landroid/app/Activity;

    move-result-object v3

    .line 49
    :goto_1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->isForegroundBusy()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 50
    const-class v4, Lcom/instabug/chat/ChatPlugin;

    invoke-static {v4}, Lcom/instabug/library/core/InstabugCore;->getXPlugin(Ljava/lang/Class;)Lcom/instabug/library/core/plugin/Plugin;

    move-result-object v4

    check-cast v4, Lcom/instabug/chat/ChatPlugin;

    if-eqz v4, :cond_4

    .line 51
    invoke-virtual {v4}, Lcom/instabug/library/core/plugin/Plugin;->getState()I

    move-result v4

    if-ne v4, v2, :cond_4

    if-eqz v3, :cond_4

    .line 52
    invoke-direct {p0, v3, p2}, Lcom/instabug/chat/f/b;->a(Landroid/app/Activity;Ljava/util/List;)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    .line 55
    invoke-direct {p0, p1, v1, v0}, Lcom/instabug/chat/f/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 60
    invoke-direct {p0, v3, p2}, Lcom/instabug/chat/f/b;->a(Landroid/app/Activity;Ljava/util/List;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 2

    :try_start_0
    const-string v0, "message"

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "IBGHost"

    .line 161
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IBGHost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 163
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "Something went wrong while showing notification"

    .line 169
    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "Parsing GCM response failed"

    .line 170
    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "message"

    .line 171
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "message"

    .line 173
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "IBGHost"

    .line 175
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 176
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "Something went wrong while showing notification"

    .line 181
    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "Parsing GCM response failed"

    .line 182
    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->PUSH_NOTIFICATION:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/chat/f/b;->a(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/instabug/chat/synchronization/SynchronizationManager;->getInstance()Lcom/instabug/chat/synchronization/SynchronizationManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/chat/synchronization/SynchronizationManager;->getInstance()Lcom/instabug/chat/synchronization/SynchronizationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/chat/synchronization/SynchronizationManager;->sync()V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/instabug/library/Feature;->PUSH_NOTIFICATION:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/instabug/chat/f/b;->a(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/instabug/chat/synchronization/SynchronizationManager;->getInstance()Lcom/instabug/chat/synchronization/SynchronizationManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcom/instabug/chat/synchronization/SynchronizationManager;->getInstance()Lcom/instabug/chat/synchronization/SynchronizationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/chat/synchronization/SynchronizationManager;->sync()V

    :cond_0
    return-void
.end method

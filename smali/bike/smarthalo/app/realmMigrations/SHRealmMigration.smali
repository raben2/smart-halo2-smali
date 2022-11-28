.class public Lbike/smarthalo/app/realmMigrations/SHRealmMigration;
.super Ljava/lang/Object;
.source "SHRealmMigration.java"

# interfaces
.implements Lio/realm/RealmMigration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$migrate$0(Lio/realm/DynamicRealmObject;)V
    .locals 2

    const-string v0, "navHomeTouchCode"

    const-string v1, "SSS"

    .line 71
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "navWorkTouchCode"

    const-string v1, "SSSS"

    .line 72
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$migrate$1(Lio/realm/DynamicRealmObject;)V
    .locals 2

    const-string v0, "navStopTouchCode"

    const-string v1, "LLLL"

    .line 85
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "navModeTouchCode"

    const-string v1, "LLL"

    .line 86
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$migrate$2(Lio/realm/DynamicRealmObject;)V
    .locals 2

    const-string v0, "clockTouchCode"

    const-string v1, "L"

    .line 101
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lightModeTouchCode"

    const-string v1, "LL"

    .line 102
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "navStopTouchCode"

    const-string v1, "LLLL"

    .line 103
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "navModeTouchCode"

    const-string v1, "LLL"

    .line 104
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isTouchSoundEnabled"

    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setBoolean(Ljava/lang/String;Z)V

    const-string v0, "touchSoundVolume"

    const/16 v1, 0x28

    .line 106
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$migrate$3(Lio/realm/DynamicRealmObject;)V
    .locals 2

    const-string v0, "isAssistingGlobal"

    const/4 v1, 0x1

    .line 159
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$migrate$4(Lio/realm/DynamicRealmObject;)V
    .locals 2

    const-string v0, "lightStateTouchCode"

    const-string v1, "SS"

    .line 191
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$migrate$5(Lio/realm/DynamicRealmObject;)V
    .locals 2

    const-string v0, "refreshToken"

    const-string v1, "authenticationToken"

    .line 217
    invoke-virtual {p0, v1}, Lio/realm/DynamicRealmObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$migrate$6(Lio/realm/DynamicRealmObject;)V
    .locals 2

    const-string v0, "deviceModel"

    const-string v1, ""

    .line 226
    invoke-virtual {p0, v0, v1}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public migrate(Lio/realm/DynamicRealm;JJ)V
    .locals 5

    .line 28
    invoke-virtual {p1}, Lio/realm/DynamicRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object p4

    const-string p5, "SHLatLng"

    .line 32
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    if-eqz p5, :cond_0

    const-string p5, "SHLatLng"

    .line 33
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->remove(Ljava/lang/String;)V

    const-string p5, "SHPresentationDirection"

    .line 34
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->remove(Ljava/lang/String;)V

    const-string p5, "PresentationNavigationState"

    .line 35
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->remove(Ljava/lang/String;)V

    :cond_0
    const-string p5, "SHGoal"

    .line 38
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v0, "hasShownIntroAnimation"

    invoke-virtual {p5, v0}, Lio/realm/RealmObjectSchema;->hasField(Ljava/lang/String;)Z

    move-result p5

    const/4 v0, 0x0

    if-nez p5, :cond_1

    const-string p5, "SHGoal"

    .line 39
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "hasShownIntroAnimation"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 40
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    :cond_1
    const-wide/16 v1, 0x4

    cmp-long p5, p2, v1

    if-gez p5, :cond_2

    const-string p5, "SHGoal"

    .line 44
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "state"

    .line 45
    invoke-virtual {p5, v1}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    :cond_2
    const-wide/16 v1, 0x5

    cmp-long p5, p2, v1

    if-gez p5, :cond_3

    const-string p5, "SHSettings"

    .line 50
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "hornCode"

    const-class v2, Ljava/lang/String;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 51
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    :cond_3
    const-wide/16 v1, 0x6

    cmp-long p5, p2, v1

    if-gez p5, :cond_4

    const-string p5, "UserFavourite"

    .line 55
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    :cond_4
    const-wide/16 v1, 0x7

    cmp-long p5, p2, v1

    if-gez p5, :cond_5

    const-string p5, "SHSettings"

    .line 60
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "hornCode"

    const-string v2, "hornTouchCode"

    .line 61
    invoke-virtual {p5, v1, v2}, Lio/realm/RealmObjectSchema;->renameField(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    const-string p5, "SHSettings"

    .line 64
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "navHomeTouchCode"

    const-class v2, Ljava/lang/String;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 65
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "navWorkTouchCode"

    const-class v2, Ljava/lang/String;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 66
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    const-string p5, "SHSettings"

    .line 69
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    sget-object v1, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$JKpVlRn01WOiL_KthXINQMYtQRw;->INSTANCE:Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$JKpVlRn01WOiL_KthXINQMYtQRw;

    .line 70
    invoke-virtual {p5, v1}, Lio/realm/RealmObjectSchema;->transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;

    :cond_5
    const-wide/16 v1, 0x8

    cmp-long p5, p2, v1

    if-gez p5, :cond_6

    const-string p5, "SHSettings"

    .line 78
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "navStopTouchCode"

    const-class v2, Ljava/lang/String;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 79
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "navModeTouchCode"

    const-class v2, Ljava/lang/String;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 80
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    const-string p5, "SHSettings"

    .line 83
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    sget-object v1, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$05Seqg9Yy7O9YmPN4QhNjH_DFzo;->INSTANCE:Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$05Seqg9Yy7O9YmPN4QhNjH_DFzo;

    .line 84
    invoke-virtual {p5, v1}, Lio/realm/RealmObjectSchema;->transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;

    :cond_6
    const-wide/16 v1, 0x9

    cmp-long p5, p2, v1

    if-gez p5, :cond_7

    const-string p5, "SHSettings"

    .line 92
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "clockTouchCode"

    const-class v2, Ljava/lang/String;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 93
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "lightModeTouchCode"

    const-class v2, Ljava/lang/String;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 94
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "isTouchSoundEnabled"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 95
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "touchSoundVolume"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 96
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    const-string p5, "SHSettings"

    .line 99
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    sget-object v1, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$z-aJFc6jnWua_qQD8GnesRRobjE;->INSTANCE:Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$z-aJFc6jnWua_qQD8GnesRRobjE;

    .line 100
    invoke-virtual {p5, v1}, Lio/realm/RealmObjectSchema;->transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;

    :cond_7
    const-wide/16 v1, 0xa

    cmp-long p5, p2, v1

    if-gez p5, :cond_8

    const-string p5, "SHPastRide"

    .line 112
    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "hasDeleteRequest"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 113
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    :cond_8
    const-wide/16 v1, 0xb

    cmp-long p5, p2, v1

    if-gez p5, :cond_9

    .line 117
    const-class p5, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 119
    const-class p5, Lbike/smarthalo/app/models/SHPastRide;

    .line 120
    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "integrations"

    const-string v2, "FitnessIntegrations"

    .line 121
    invoke-virtual {p4, v2}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v2

    invoke-virtual {p5, v1, v2}, Lio/realm/RealmObjectSchema;->addRealmListField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;

    :cond_9
    const-wide/16 v1, 0xc

    cmp-long p5, p2, v1

    if-gez p5, :cond_a

    .line 125
    const-class p5, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->create(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "stravaId"

    .line 126
    const-class v2, Ljava/lang/String;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 128
    const-class v1, Lbike/smarthalo/app/models/SHPastRide;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    const-string v2, "integrations"

    .line 130
    invoke-virtual {v1, v2}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    const-string v2, "fitnessIntegrations"

    .line 131
    invoke-virtual {v1, v2, p5}, Lio/realm/RealmObjectSchema;->addRealmObjectField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;

    .line 133
    const-class p5, Lbike/smarthalo/app/models/SHUser;

    .line 134
    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "language"

    const-class v2, Ljava/lang/String;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 135
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 137
    const-class p5, Lbike/smarthalo/app/models/StravaLinkedAccount;

    .line 138
    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "areRidesPrivate"

    .line 139
    invoke-virtual {p5, v1}, Lio/realm/RealmObjectSchema;->removeField(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "username"

    const-class v2, Ljava/lang/String;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 140
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "imageUrl"

    const-class v2, Ljava/lang/String;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 141
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    :cond_a
    const-wide/16 v1, 0xd

    cmp-long p5, p2, v1

    if-gez p5, :cond_b

    .line 145
    const-class p5, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    if-eqz p5, :cond_b

    const-string v1, "isAssistingMessenger"

    .line 148
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 149
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    const-string v2, "isAssistingWhatsapp"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Lio/realm/FieldAttribute;

    .line 150
    invoke-virtual {v1, v2, v3, v4}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    const-string v2, "isAssistingGmail"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Lio/realm/FieldAttribute;

    .line 151
    invoke-virtual {v1, v2, v3, v4}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    const-string v2, "isAssistingHangouts"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Lio/realm/FieldAttribute;

    .line 152
    invoke-virtual {v1, v2, v3, v4}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    const-string v2, "isAssistingWechat"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Lio/realm/FieldAttribute;

    .line 153
    invoke-virtual {v1, v2, v3, v4}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    const-string v2, "isAssistingGlobal"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Lio/realm/FieldAttribute;

    .line 154
    invoke-virtual {v1, v2, v3, v4}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    const-string v2, "isAssistingSlack"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Lio/realm/FieldAttribute;

    .line 155
    invoke-virtual {v1, v2, v3, v4}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 157
    sget-object v1, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$hldWQWzbAIa0NdhpHKeJIO6ynPY;->INSTANCE:Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$hldWQWzbAIa0NdhpHKeJIO6ynPY;

    .line 158
    invoke-virtual {p5, v1}, Lio/realm/RealmObjectSchema;->transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;

    :cond_b
    const-wide/16 v1, 0xe

    cmp-long p5, p2, v1

    if-gez p5, :cond_f

    .line 165
    const-class p5, Lbike/smarthalo/app/models/FitnessIntegrations;

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    .line 166
    const-class v1, Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    if-eqz v1, :cond_c

    if-eqz p5, :cond_c

    const-string v2, "fitnessIntegrations"

    .line 170
    invoke-virtual {v1, v2, p5}, Lio/realm/RealmObjectSchema;->addRealmObjectField(Ljava/lang/String;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "hasStravaUploadRequest"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 171
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 174
    :cond_c
    const-class p5, Lbike/smarthalo/app/models/SHPastRide;

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    if-eqz p5, :cond_d

    const-string v1, "hasStravaUploadRequest"

    .line 177
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 178
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "hasUpdateRequest"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 179
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 182
    :cond_d
    const-class p5, Lbike/smarthalo/app/models/SHSettings;

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    if-eqz p5, :cond_e

    const-string v1, "progressToDestinationTouchCode"

    .line 184
    const-class v2, Ljava/lang/String;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 185
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    const-string v2, "lightStateTouchCode"

    const-class v3, Ljava/lang/String;

    new-array v4, v0, [Lio/realm/FieldAttribute;

    .line 186
    invoke-virtual {v1, v2, v3, v4}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object v1

    const-string v2, "lightModeCycleTouchCode"

    const-class v3, Ljava/lang/String;

    new-array v4, v0, [Lio/realm/FieldAttribute;

    .line 187
    invoke-virtual {v1, v2, v3, v4}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 189
    sget-object v1, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$KpX-asiTzL9GWC6Ym1PuVAvBUvs;->INSTANCE:Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$KpX-asiTzL9GWC6Ym1PuVAvBUvs;

    .line 190
    invoke-virtual {p5, v1}, Lio/realm/RealmObjectSchema;->transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;

    .line 195
    :cond_e
    const-class p5, Lbike/smarthalo/app/models/SHAppData;

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lio/realm/DynamicRealm;->where(Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string p5, "key"

    const-string v1, "HAS_DOWNLOADED_PAST_RIDES"

    .line 196
    invoke-virtual {p1, p5, v1}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/DynamicRealmObject;

    if-eqz p1, :cond_f

    const-string p5, "value"

    .line 200
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p5, v1}, Lio/realm/DynamicRealmObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-wide/16 v1, 0xf

    cmp-long p1, p2, v1

    if-gez p1, :cond_10

    .line 205
    const-class p1, Lbike/smarthalo/app/models/StravaLinkedAccount;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string p5, "refreshToken"

    .line 208
    const-class v1, Ljava/lang/String;

    new-array v2, v0, [Lio/realm/FieldAttribute;

    .line 209
    invoke-virtual {p1, p5, v1, v2}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    move-result-object p5

    const-string v1, "authenticationTokenExpiration"

    const-class v2, Ljava/lang/Long;

    new-array v3, v0, [Lio/realm/FieldAttribute;

    .line 210
    invoke-virtual {p5, v1, v2, v3}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 212
    invoke-virtual {p1}, Lio/realm/RealmObjectSchema;->removePrimaryKey()Lio/realm/RealmObjectSchema;

    const-string p5, "accountId"

    .line 213
    invoke-virtual {p1, p5}, Lio/realm/RealmObjectSchema;->addPrimaryKey(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    .line 215
    sget-object p5, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$H1eKxQa-GCaVbuLpFVJXbd15-eQ;->INSTANCE:Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$H1eKxQa-GCaVbuLpFVJXbd15-eQ;

    .line 216
    invoke-virtual {p1, p5}, Lio/realm/RealmObjectSchema;->transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;

    :cond_10
    const-wide/16 v1, 0x10

    cmp-long p1, p2, v1

    if-gez p1, :cond_11

    .line 223
    const-class p1, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lio/realm/RealmSchema;->get(Ljava/lang/String;)Lio/realm/RealmObjectSchema;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string p2, "deviceModel"

    .line 225
    const-class p3, Ljava/lang/String;

    new-array p4, v0, [Lio/realm/FieldAttribute;

    invoke-virtual {p1, p2, p3, p4}, Lio/realm/RealmObjectSchema;->addField(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/FieldAttribute;)Lio/realm/RealmObjectSchema;

    .line 226
    sget-object p2, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$VWg4ANmvIOu6uS4-6CL1Nrd8cSM;->INSTANCE:Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$VWg4ANmvIOu6uS4-6CL1Nrd8cSM;

    invoke-virtual {p1, p2}, Lio/realm/RealmObjectSchema;->transform(Lio/realm/RealmObjectSchema$Function;)Lio/realm/RealmObjectSchema;

    :cond_11
    return-void
.end method

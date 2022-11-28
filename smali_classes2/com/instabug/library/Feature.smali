.class public final enum Lcom/instabug/library/Feature;
.super Ljava/lang/Enum;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/Feature$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/Feature;

.field public static final enum ANNOUNCEMENTS:Lcom/instabug/library/Feature;

.field public static final enum ANR_REPORTING:Lcom/instabug/library/Feature;

.field public static final enum BE_USER_ATTRIBUTES:Lcom/instabug/library/Feature;

.field public static final enum BUG_REPORTING:Lcom/instabug/library/Feature;

.field public static final enum CHATS:Lcom/instabug/library/Feature;

.field public static final enum CONSOLE_LOGS:Lcom/instabug/library/Feature;

.field public static final enum CRASH_REPORTING:Lcom/instabug/library/Feature;

.field public static final enum DEPRECATED_CHATS:Lcom/instabug/library/Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DISCLAIMER:Lcom/instabug/library/Feature;

.field public static final enum FEATURE_REQUESTS:Lcom/instabug/library/Feature;

.field public static final enum INSTABUG:Lcom/instabug/library/Feature;

.field public static final enum INSTABUG_LOGS:Lcom/instabug/library/Feature;

.field public static final enum IN_APP_MESSAGING:Lcom/instabug/library/Feature;

.field public static final enum MULTIPLE_ATTACHMENTS:Lcom/instabug/library/Feature;

.field public static final enum PUSH_NOTIFICATION:Lcom/instabug/library/Feature;

.field public static final enum REPLIES:Lcom/instabug/library/Feature;

.field public static final enum REPORT_PHONE_NUMBER:Lcom/instabug/library/Feature;

.field public static final enum REPRO_STEPS:Lcom/instabug/library/Feature;

.field public static final enum SDK_ANALYTICS:Lcom/instabug/library/Feature;

.field public static final enum SESSION_PROFILER:Lcom/instabug/library/Feature;

.field public static final enum SURVEYS:Lcom/instabug/library/Feature;

.field public static final enum TRACK_USER_STEPS:Lcom/instabug/library/Feature;

.field public static final enum USER_DATA:Lcom/instabug/library/Feature;

.field public static final enum USER_EVENTS:Lcom/instabug/library/Feature;

.field public static final enum VIEW_HIERARCHY_V2:Lcom/instabug/library/Feature;

.field public static final enum VP_CUSTOMIZATION:Lcom/instabug/library/Feature;

.field public static final enum VZ_MESSAGES_CUSTOM_APPRATING_UI:Lcom/instabug/library/Feature;

.field public static final enum WHITE_LABELING:Lcom/instabug/library/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "INSTABUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->INSTABUG:Lcom/instabug/library/Feature;

    .line 10
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "CRASH_REPORTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->CRASH_REPORTING:Lcom/instabug/library/Feature;

    .line 19
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "ANR_REPORTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->ANR_REPORTING:Lcom/instabug/library/Feature;

    .line 29
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "PUSH_NOTIFICATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->PUSH_NOTIFICATION:Lcom/instabug/library/Feature;

    .line 38
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "WHITE_LABELING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->WHITE_LABELING:Lcom/instabug/library/Feature;

    .line 47
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "IN_APP_MESSAGING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->IN_APP_MESSAGING:Lcom/instabug/library/Feature;

    .line 56
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "TRACK_USER_STEPS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->TRACK_USER_STEPS:Lcom/instabug/library/Feature;

    .line 65
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "REPRO_STEPS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->REPRO_STEPS:Lcom/instabug/library/Feature;

    .line 74
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "MULTIPLE_ATTACHMENTS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->MULTIPLE_ATTACHMENTS:Lcom/instabug/library/Feature;

    .line 83
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "INSTABUG_LOGS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->INSTABUG_LOGS:Lcom/instabug/library/Feature;

    .line 92
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "USER_DATA"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->USER_DATA:Lcom/instabug/library/Feature;

    .line 101
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "CONSOLE_LOGS"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->CONSOLE_LOGS:Lcom/instabug/library/Feature;

    .line 111
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "SURVEYS"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->SURVEYS:Lcom/instabug/library/Feature;

    .line 121
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "VIEW_HIERARCHY_V2"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->VIEW_HIERARCHY_V2:Lcom/instabug/library/Feature;

    .line 130
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "USER_EVENTS"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->USER_EVENTS:Lcom/instabug/library/Feature;

    .line 139
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "DISCLAIMER"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->DISCLAIMER:Lcom/instabug/library/Feature;

    .line 148
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "SESSION_PROFILER"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->SESSION_PROFILER:Lcom/instabug/library/Feature;

    .line 158
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "FEATURE_REQUESTS"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->FEATURE_REQUESTS:Lcom/instabug/library/Feature;

    .line 168
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "VP_CUSTOMIZATION"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->VP_CUSTOMIZATION:Lcom/instabug/library/Feature;

    .line 178
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "ANNOUNCEMENTS"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->ANNOUNCEMENTS:Lcom/instabug/library/Feature;

    .line 188
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "BUG_REPORTING"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->BUG_REPORTING:Lcom/instabug/library/Feature;

    .line 198
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "CHATS"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->CHATS:Lcom/instabug/library/Feature;

    .line 208
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "DEPRECATED_CHATS"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->DEPRECATED_CHATS:Lcom/instabug/library/Feature;

    .line 219
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "REPLIES"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->REPLIES:Lcom/instabug/library/Feature;

    .line 229
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "BE_USER_ATTRIBUTES"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->BE_USER_ATTRIBUTES:Lcom/instabug/library/Feature;

    .line 239
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "REPORT_PHONE_NUMBER"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->REPORT_PHONE_NUMBER:Lcom/instabug/library/Feature;

    .line 249
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "VZ_MESSAGES_CUSTOM_APPRATING_UI"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->VZ_MESSAGES_CUSTOM_APPRATING_UI:Lcom/instabug/library/Feature;

    .line 259
    new-instance v0, Lcom/instabug/library/Feature;

    const-string v1, "SDK_ANALYTICS"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Lcom/instabug/library/Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/Feature;->SDK_ANALYTICS:Lcom/instabug/library/Feature;

    const/16 v1, 0x1c

    .line 260
    new-array v1, v1, [Lcom/instabug/library/Feature;

    sget-object v15, Lcom/instabug/library/Feature;->INSTABUG:Lcom/instabug/library/Feature;

    aput-object v15, v1, v2

    sget-object v2, Lcom/instabug/library/Feature;->CRASH_REPORTING:Lcom/instabug/library/Feature;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->ANR_REPORTING:Lcom/instabug/library/Feature;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/library/Feature;->PUSH_NOTIFICATION:Lcom/instabug/library/Feature;

    aput-object v2, v1, v5

    sget-object v2, Lcom/instabug/library/Feature;->WHITE_LABELING:Lcom/instabug/library/Feature;

    aput-object v2, v1, v6

    sget-object v2, Lcom/instabug/library/Feature;->IN_APP_MESSAGING:Lcom/instabug/library/Feature;

    aput-object v2, v1, v7

    sget-object v2, Lcom/instabug/library/Feature;->TRACK_USER_STEPS:Lcom/instabug/library/Feature;

    aput-object v2, v1, v8

    sget-object v2, Lcom/instabug/library/Feature;->REPRO_STEPS:Lcom/instabug/library/Feature;

    aput-object v2, v1, v9

    sget-object v2, Lcom/instabug/library/Feature;->MULTIPLE_ATTACHMENTS:Lcom/instabug/library/Feature;

    aput-object v2, v1, v10

    sget-object v2, Lcom/instabug/library/Feature;->INSTABUG_LOGS:Lcom/instabug/library/Feature;

    aput-object v2, v1, v11

    sget-object v2, Lcom/instabug/library/Feature;->USER_DATA:Lcom/instabug/library/Feature;

    aput-object v2, v1, v12

    sget-object v2, Lcom/instabug/library/Feature;->CONSOLE_LOGS:Lcom/instabug/library/Feature;

    aput-object v2, v1, v13

    sget-object v2, Lcom/instabug/library/Feature;->SURVEYS:Lcom/instabug/library/Feature;

    aput-object v2, v1, v14

    sget-object v2, Lcom/instabug/library/Feature;->VIEW_HIERARCHY_V2:Lcom/instabug/library/Feature;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->USER_EVENTS:Lcom/instabug/library/Feature;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->DISCLAIMER:Lcom/instabug/library/Feature;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->SESSION_PROFILER:Lcom/instabug/library/Feature;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->FEATURE_REQUESTS:Lcom/instabug/library/Feature;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->VP_CUSTOMIZATION:Lcom/instabug/library/Feature;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->ANNOUNCEMENTS:Lcom/instabug/library/Feature;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->BUG_REPORTING:Lcom/instabug/library/Feature;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->CHATS:Lcom/instabug/library/Feature;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->DEPRECATED_CHATS:Lcom/instabug/library/Feature;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->REPLIES:Lcom/instabug/library/Feature;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->BE_USER_ATTRIBUTES:Lcom/instabug/library/Feature;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->REPORT_PHONE_NUMBER:Lcom/instabug/library/Feature;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/Feature;->VZ_MESSAGES_CUSTOM_APPRATING_UI:Lcom/instabug/library/Feature;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    sput-object v1, Lcom/instabug/library/Feature;->$VALUES:[Lcom/instabug/library/Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/Feature;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/Feature;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/Feature;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->$VALUES:[Lcom/instabug/library/Feature;

    invoke-virtual {v0}, [Lcom/instabug/library/Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/Feature;

    return-object v0
.end method

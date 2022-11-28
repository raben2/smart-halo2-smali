.class public final enum Lcom/instabug/library/network/Request$Endpoint;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/network/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Endpoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/network/Request$Endpoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum ADD_BUG_ATTACHMENT:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum ADD_COMMENT:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum ADD_CRASH_ATTACHMENT:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum ADD_MESSAGE_ATTACHMENT:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum ADD_NEW_FEATURE:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum ANALYTICS:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum APP_SETTINGS:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum BUG_LOGS:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum CHAT_LOGS:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum CRASH_LOGS:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum FIRST_SEEN:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum GET_ANNOUNCEMENTS:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum GET_FEATURES_REQUEST:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum GET_FEATURE_DETAILS:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum GET_FEATURE_TIMELINE:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum GET_SURVEYS:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum MIGRATE_UUID:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum PUSH_TOKEN:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum REPORT_ANR:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum REPORT_BUG:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum REPORT_CATEGORIES:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum REPORT_CRASH:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum RESOLVE_IP:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum SEARCH:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum SEND_MESSAGE:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum SEND_SESSION:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum SUBMIT_ANNOUNCEMENT:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum SUBMIT_SURVEY:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum SYNC_CHATS:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum TRIGGER_CHAT:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum USER_ATTRIBUTES:Lcom/instabug/library/network/Request$Endpoint;

.field public static final enum VOTE_FEATURE:Lcom/instabug/library/network/Request$Endpoint;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "REPORT_BUG"

    const-string v2, "/bugs"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->REPORT_BUG:Lcom/instabug/library/network/Request$Endpoint;

    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "ADD_BUG_ATTACHMENT"

    const-string v2, "/bugs/:bug_token/attachments"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->ADD_BUG_ATTACHMENT:Lcom/instabug/library/network/Request$Endpoint;

    .line 2
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "REPORT_CRASH"

    const-string v2, "/crashes"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->REPORT_CRASH:Lcom/instabug/library/network/Request$Endpoint;

    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "ADD_CRASH_ATTACHMENT"

    const-string v2, "/crashes/:crash_token/attachments"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->ADD_CRASH_ATTACHMENT:Lcom/instabug/library/network/Request$Endpoint;

    .line 3
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "REPORT_ANR"

    const-string v2, "/crashes/anr"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->REPORT_ANR:Lcom/instabug/library/network/Request$Endpoint;

    .line 4
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "TRIGGER_CHAT"

    const-string v2, "/chats"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->TRIGGER_CHAT:Lcom/instabug/library/network/Request$Endpoint;

    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "SEND_MESSAGE"

    const-string v2, "/chats/:chat_number/messages"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->SEND_MESSAGE:Lcom/instabug/library/network/Request$Endpoint;

    .line 5
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "ADD_MESSAGE_ATTACHMENT"

    const-string v2, "/chats/:chat_number/messages/:message_id/attachments"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->ADD_MESSAGE_ATTACHMENT:Lcom/instabug/library/network/Request$Endpoint;

    .line 6
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "SYNC_CHATS"

    const-string v2, "/chats/sync"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->SYNC_CHATS:Lcom/instabug/library/network/Request$Endpoint;

    .line 7
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "APP_SETTINGS"

    const-string v2, "/features"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->APP_SETTINGS:Lcom/instabug/library/network/Request$Endpoint;

    .line 8
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "SEND_SESSION"

    const-string v2, "/sessions/v2"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->SEND_SESSION:Lcom/instabug/library/network/Request$Endpoint;

    .line 9
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "GET_SURVEYS"

    const-string v2, "/surveys/v7"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->GET_SURVEYS:Lcom/instabug/library/network/Request$Endpoint;

    .line 10
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "SUBMIT_SURVEY"

    const-string v2, "/surveys/:survey_id/v7/responses"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->SUBMIT_SURVEY:Lcom/instabug/library/network/Request$Endpoint;

    .line 11
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "BUG_LOGS"

    const-string v2, "/bugs/:bug_token/state_logs"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->BUG_LOGS:Lcom/instabug/library/network/Request$Endpoint;

    .line 12
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "CRASH_LOGS"

    const-string v2, "/crashes/:crash_token/state_logs"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->CRASH_LOGS:Lcom/instabug/library/network/Request$Endpoint;

    .line 13
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "CHAT_LOGS"

    const-string v2, "/chats/:chat_token/state_logs"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->CHAT_LOGS:Lcom/instabug/library/network/Request$Endpoint;

    .line 14
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "MIGRATE_UUID"

    const-string v2, "/migrate_uuid"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->MIGRATE_UUID:Lcom/instabug/library/network/Request$Endpoint;

    .line 15
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "ANALYTICS"

    const-string v2, "/analytics"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->ANALYTICS:Lcom/instabug/library/network/Request$Endpoint;

    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "PUSH_TOKEN"

    const-string v2, "/push_token"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->PUSH_TOKEN:Lcom/instabug/library/network/Request$Endpoint;

    .line 16
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "REPORT_CATEGORIES"

    const-string v2, "/application_categories"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->REPORT_CATEGORIES:Lcom/instabug/library/network/Request$Endpoint;

    .line 17
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "GET_FEATURES_REQUEST"

    const-string v2, "/feature_reqs"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->GET_FEATURES_REQUEST:Lcom/instabug/library/network/Request$Endpoint;

    .line 18
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "GET_FEATURE_DETAILS"

    const-string v2, "/feature_reqs/:feature_req_id"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->GET_FEATURE_DETAILS:Lcom/instabug/library/network/Request$Endpoint;

    .line 19
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "GET_FEATURE_TIMELINE"

    const-string v2, "/feature_reqs/:feature_req_id/timeline"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->GET_FEATURE_TIMELINE:Lcom/instabug/library/network/Request$Endpoint;

    .line 20
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "VOTE_FEATURE"

    const-string v2, "/feature_reqs/:feature_req_id/like"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->VOTE_FEATURE:Lcom/instabug/library/network/Request$Endpoint;

    .line 21
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "SEARCH"

    const-string v2, "/search"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->SEARCH:Lcom/instabug/library/network/Request$Endpoint;

    .line 22
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "ADD_NEW_FEATURE"

    const-string v2, "/feature_reqs"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->ADD_NEW_FEATURE:Lcom/instabug/library/network/Request$Endpoint;

    .line 23
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "ADD_COMMENT"

    const-string v2, "/feature_reqs/:feature_req_id/comment"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->ADD_COMMENT:Lcom/instabug/library/network/Request$Endpoint;

    .line 24
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "RESOLVE_IP"

    const-string v2, "/resolve_ip"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->RESOLVE_IP:Lcom/instabug/library/network/Request$Endpoint;

    .line 25
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "GET_ANNOUNCEMENTS"

    const-string v2, "/announcements/v2"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->GET_ANNOUNCEMENTS:Lcom/instabug/library/network/Request$Endpoint;

    .line 26
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "SUBMIT_ANNOUNCEMENT"

    const-string v2, "/announcements/:announcement_id/v2/responses"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->SUBMIT_ANNOUNCEMENT:Lcom/instabug/library/network/Request$Endpoint;

    .line 27
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "USER_ATTRIBUTES"

    const-string v2, "/users/attributes"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->USER_ATTRIBUTES:Lcom/instabug/library/network/Request$Endpoint;

    .line 32
    new-instance v0, Lcom/instabug/library/network/Request$Endpoint;

    const-string v1, "FIRST_SEEN"

    const-string v2, "/first_seen"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15, v2}, Lcom/instabug/library/network/Request$Endpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$Endpoint;->FIRST_SEEN:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v1, 0x20

    .line 33
    new-array v1, v1, [Lcom/instabug/library/network/Request$Endpoint;

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->REPORT_BUG:Lcom/instabug/library/network/Request$Endpoint;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->ADD_BUG_ATTACHMENT:Lcom/instabug/library/network/Request$Endpoint;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->REPORT_CRASH:Lcom/instabug/library/network/Request$Endpoint;

    aput-object v2, v1, v5

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->ADD_CRASH_ATTACHMENT:Lcom/instabug/library/network/Request$Endpoint;

    aput-object v2, v1, v6

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->REPORT_ANR:Lcom/instabug/library/network/Request$Endpoint;

    aput-object v2, v1, v7

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->TRIGGER_CHAT:Lcom/instabug/library/network/Request$Endpoint;

    aput-object v2, v1, v8

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->SEND_MESSAGE:Lcom/instabug/library/network/Request$Endpoint;

    aput-object v2, v1, v9

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->ADD_MESSAGE_ATTACHMENT:Lcom/instabug/library/network/Request$Endpoint;

    aput-object v2, v1, v10

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->SYNC_CHATS:Lcom/instabug/library/network/Request$Endpoint;

    aput-object v2, v1, v11

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->APP_SETTINGS:Lcom/instabug/library/network/Request$Endpoint;

    aput-object v2, v1, v12

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->SEND_SESSION:Lcom/instabug/library/network/Request$Endpoint;

    aput-object v2, v1, v13

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->GET_SURVEYS:Lcom/instabug/library/network/Request$Endpoint;

    aput-object v2, v1, v14

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->SUBMIT_SURVEY:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->BUG_LOGS:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->CRASH_LOGS:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->CHAT_LOGS:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->MIGRATE_UUID:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->ANALYTICS:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->PUSH_TOKEN:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->REPORT_CATEGORIES:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->GET_FEATURES_REQUEST:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->GET_FEATURE_DETAILS:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->GET_FEATURE_TIMELINE:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->VOTE_FEATURE:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->SEARCH:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->ADD_NEW_FEATURE:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->ADD_COMMENT:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->RESOLVE_IP:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->GET_ANNOUNCEMENTS:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->SUBMIT_ANNOUNCEMENT:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$Endpoint;->USER_ATTRIBUTES:Lcom/instabug/library/network/Request$Endpoint;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    sput-object v1, Lcom/instabug/library/network/Request$Endpoint;->$VALUES:[Lcom/instabug/library/network/Request$Endpoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/instabug/library/network/Request$Endpoint;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/network/Request$Endpoint;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/network/Request$Endpoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/network/Request$Endpoint;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/network/Request$Endpoint;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/network/Request$Endpoint;->$VALUES:[Lcom/instabug/library/network/Request$Endpoint;

    invoke-virtual {v0}, [Lcom/instabug/library/network/Request$Endpoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/network/Request$Endpoint;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request$Endpoint;->name:Ljava/lang/String;

    return-object v0
.end method

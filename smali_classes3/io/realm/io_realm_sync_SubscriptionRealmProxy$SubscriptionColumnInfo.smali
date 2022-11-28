.class final Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "io_realm_sync_SubscriptionRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/io_realm_sync_SubscriptionRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubscriptionColumnInfo"
.end annotation


# instance fields
.field errorMessageIndex:J

.field matchesPropertyIndex:J

.field maxColumnIndexValue:J

.field nameIndex:J

.field queryIndex:J

.field queryParseCounterIndex:J

.field statusIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 62
    invoke-virtual {p0, p1, p0}, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x6

    .line 49
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "__ResultSets"

    .line 50
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "name"

    const-string v1, "name"

    .line 51
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->nameIndex:J

    const-string v0, "status"

    const-string v1, "status"

    .line 52
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->statusIndex:J

    const-string v0, "errorMessage"

    const-string v1, "error_message"

    .line 53
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->errorMessageIndex:J

    const-string v0, "matchesProperty"

    const-string v1, "matches_property"

    .line 54
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->matchesPropertyIndex:J

    const-string v0, "query"

    const-string v1, "query"

    .line 55
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->queryIndex:J

    const-string v0, "queryParseCounter"

    const-string v1, "query_parse_counter"

    .line 56
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->queryParseCounterIndex:J

    .line 57
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->getMaxColumnIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->maxColumnIndexValue:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 67
    new-instance v0, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 72
    check-cast p1, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;

    .line 73
    check-cast p2, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;

    .line 74
    iget-wide v0, p1, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->nameIndex:J

    iput-wide v0, p2, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->nameIndex:J

    .line 75
    iget-wide v0, p1, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->statusIndex:J

    iput-wide v0, p2, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->statusIndex:J

    .line 76
    iget-wide v0, p1, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->errorMessageIndex:J

    iput-wide v0, p2, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->errorMessageIndex:J

    .line 77
    iget-wide v0, p1, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->matchesPropertyIndex:J

    iput-wide v0, p2, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->matchesPropertyIndex:J

    .line 78
    iget-wide v0, p1, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->queryIndex:J

    iput-wide v0, p2, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->queryIndex:J

    .line 79
    iget-wide v0, p1, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->queryParseCounterIndex:J

    iput-wide v0, p2, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->queryParseCounterIndex:J

    .line 80
    iget-wide v0, p1, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->maxColumnIndexValue:J

    iput-wide v0, p2, Lio/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo;->maxColumnIndexValue:J

    return-void
.end method

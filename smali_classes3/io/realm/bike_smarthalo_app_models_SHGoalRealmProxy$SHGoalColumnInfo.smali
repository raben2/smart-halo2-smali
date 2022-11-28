.class final Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "bike_smarthalo_app_models_SHGoalRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SHGoalColumnInfo"
.end annotation


# instance fields
.field goalIndex:J

.field hasShownIntroAnimationIndex:J

.field idIndex:J

.field isActiveIndex:J

.field isCompletedIndex:J

.field maxColumnIndexValue:J

.field nextProgressIndex:J

.field previousProgressIndex:J

.field progressIndex:J

.field timestampIndex:J

.field typeIndex:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 71
    invoke-virtual {p0, p1, p0}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0xa

    .line 54
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "SHGoal"

    .line 55
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "timestamp"

    const-string v1, "timestamp"

    .line 56
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    const-string v0, "id"

    const-string v1, "id"

    .line 57
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->idIndex:J

    const-string v0, "type"

    const-string v1, "type"

    .line 58
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->typeIndex:J

    const-string v0, "goal"

    const-string v1, "goal"

    .line 59
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    const-string v0, "progress"

    const-string v1, "progress"

    .line 60
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->progressIndex:J

    const-string v0, "previousProgress"

    const-string v1, "previousProgress"

    .line 61
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->previousProgressIndex:J

    const-string v0, "nextProgress"

    const-string v1, "nextProgress"

    .line 62
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->nextProgressIndex:J

    const-string v0, "isCompleted"

    const-string v1, "isCompleted"

    .line 63
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isCompletedIndex:J

    const-string v0, "isActive"

    const-string v1, "isActive"

    .line 64
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isActiveIndex:J

    const-string v0, "hasShownIntroAnimation"

    const-string v1, "hasShownIntroAnimation"

    .line 65
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->hasShownIntroAnimationIndex:J

    .line 66
    invoke-virtual {p1}, Lio/realm/internal/OsObjectSchemaInfo;->getMaxColumnIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->maxColumnIndexValue:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 76
    new-instance v0, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 81
    check-cast p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    .line 82
    check-cast p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;

    .line 83
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->timestampIndex:J

    .line 84
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->idIndex:J

    .line 85
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->typeIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->typeIndex:J

    .line 86
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->goalIndex:J

    .line 87
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->progressIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->progressIndex:J

    .line 88
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->previousProgressIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->previousProgressIndex:J

    .line 89
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->nextProgressIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->nextProgressIndex:J

    .line 90
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isCompletedIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isCompletedIndex:J

    .line 91
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isActiveIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->isActiveIndex:J

    .line 92
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->hasShownIntroAnimationIndex:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->hasShownIntroAnimationIndex:J

    .line 93
    iget-wide v0, p1, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->maxColumnIndexValue:J

    iput-wide v0, p2, Lio/realm/bike_smarthalo_app_models_SHGoalRealmProxy$SHGoalColumnInfo;->maxColumnIndexValue:J

    return-void
.end method

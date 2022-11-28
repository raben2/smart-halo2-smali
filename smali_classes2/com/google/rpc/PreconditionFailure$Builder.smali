.class public final Lcom/google/rpc/PreconditionFailure$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PreconditionFailure.java"

# interfaces
.implements Lcom/google/rpc/PreconditionFailureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/PreconditionFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/PreconditionFailure;",
        "Lcom/google/rpc/PreconditionFailure$Builder;",
        ">;",
        "Lcom/google/rpc/PreconditionFailureOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 996
    invoke-static {}, Lcom/google/rpc/PreconditionFailure;->access$1100()Lcom/google/rpc/PreconditionFailure;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/PreconditionFailure$1;)V
    .locals 0

    .line 989
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllViolations(Ljava/lang/Iterable;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;)",
            "Lcom/google/rpc/PreconditionFailure$Builder;"
        }
    .end annotation

    .line 1121
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1122
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure;->access$1500(Lcom/google/rpc/PreconditionFailure;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addViolations(ILcom/google/rpc/PreconditionFailure$Violation$Builder;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1

    .line 1107
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1108
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    .line 1109
    invoke-virtual {p2}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/rpc/PreconditionFailure$Violation;

    .line 1108
    invoke-static {v0, p1, p2}, Lcom/google/rpc/PreconditionFailure;->access$1400(Lcom/google/rpc/PreconditionFailure;ILcom/google/rpc/PreconditionFailure$Violation;)V

    return-object p0
.end method

.method public addViolations(ILcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1

    .line 1081
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1082
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/PreconditionFailure;->access$1400(Lcom/google/rpc/PreconditionFailure;ILcom/google/rpc/PreconditionFailure$Violation;)V

    return-object p0
.end method

.method public addViolations(Lcom/google/rpc/PreconditionFailure$Violation$Builder;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1

    .line 1094
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1095
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-virtual {p1}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure;->access$1300(Lcom/google/rpc/PreconditionFailure;Lcom/google/rpc/PreconditionFailure$Violation;)V

    return-object p0
.end method

.method public addViolations(Lcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1

    .line 1068
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1069
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure;->access$1300(Lcom/google/rpc/PreconditionFailure;Lcom/google/rpc/PreconditionFailure$Violation;)V

    return-object p0
.end method

.method public clearViolations()Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1134
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0}, Lcom/google/rpc/PreconditionFailure;->access$1600(Lcom/google/rpc/PreconditionFailure;)V

    return-object p0
.end method

.method public getViolations(I)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-virtual {v0, p1}, Lcom/google/rpc/PreconditionFailure;->getViolations(I)Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object p1

    return-object p1
.end method

.method public getViolationsCount()I
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure;->getViolationsCount()I

    move-result v0

    return v0
.end method

.method public getViolationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;"
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    .line 1010
    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure;->getViolationsList()Ljava/util/List;

    move-result-object v0

    .line 1009
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeViolations(I)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1

    .line 1145
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1146
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure;->access$1700(Lcom/google/rpc/PreconditionFailure;I)V

    return-object p0
.end method

.method public setViolations(ILcom/google/rpc/PreconditionFailure$Violation$Builder;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1

    .line 1055
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1056
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    .line 1057
    invoke-virtual {p2}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/rpc/PreconditionFailure$Violation;

    .line 1056
    invoke-static {v0, p1, p2}, Lcom/google/rpc/PreconditionFailure;->access$1200(Lcom/google/rpc/PreconditionFailure;ILcom/google/rpc/PreconditionFailure$Violation;)V

    return-object p0
.end method

.method public setViolations(ILcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1

    .line 1042
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1043
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/PreconditionFailure;->access$1200(Lcom/google/rpc/PreconditionFailure;ILcom/google/rpc/PreconditionFailure$Violation;)V

    return-object p0
.end method

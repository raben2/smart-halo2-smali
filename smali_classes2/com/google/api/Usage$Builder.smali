.class public final Lcom/google/api/Usage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Usage.java"

# interfaces
.implements Lcom/google/api/UsageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Usage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Usage;",
        "Lcom/google/api/Usage$Builder;",
        ">;",
        "Lcom/google/api/UsageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 509
    invoke-static {}, Lcom/google/api/Usage;->access$000()Lcom/google/api/Usage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Usage$1;)V
    .locals 0

    .line 502
    invoke-direct {p0}, Lcom/google/api/Usage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRequirements(Ljava/lang/Iterable;)Lcom/google/api/Usage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Usage$Builder;"
        }
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 623
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$300(Lcom/google/api/Usage;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Usage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/UsageRule;",
            ">;)",
            "Lcom/google/api/Usage$Builder;"
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 791
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$900(Lcom/google/api/Usage;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addRequirements(Ljava/lang/String;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$200(Lcom/google/api/Usage;Ljava/lang/String;)V

    return-object p0
.end method

.method public addRequirementsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 654
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 655
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$500(Lcom/google/api/Usage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/UsageRule$Builder;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 775
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 776
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 777
    invoke-virtual {p2}, Lcom/google/api/UsageRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/UsageRule;

    .line 776
    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$800(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/UsageRule;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 747
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 748
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$800(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/UsageRule$Builder;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 761
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 762
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {p1}, Lcom/google/api/UsageRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/UsageRule;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$700(Lcom/google/api/Usage;Lcom/google/api/UsageRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/UsageRule;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 733
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 734
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$700(Lcom/google/api/Usage;Lcom/google/api/UsageRule;)V

    return-object p0
.end method

.method public clearProducerNotificationChannel()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 895
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0}, Lcom/google/api/Usage;->access$1300(Lcom/google/api/Usage;)V

    return-object p0
.end method

.method public clearRequirements()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 638
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0}, Lcom/google/api/Usage;->access$400(Lcom/google/api/Usage;)V

    return-object p0
.end method

.method public clearRules()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 803
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 804
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0}, Lcom/google/api/Usage;->access$1000(Lcom/google/api/Usage;)V

    return-object p0
.end method

.method public getProducerNotificationChannel()Ljava/lang/String;
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getProducerNotificationChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProducerNotificationChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getProducerNotificationChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequirements(I)Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0, p1}, Lcom/google/api/Usage;->getRequirements(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRequirementsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0, p1}, Lcom/google/api/Usage;->getRequirementsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRequirementsCount()I
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getRequirementsCount()I

    move-result v0

    return v0
.end method

.method public getRequirementsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 527
    invoke-virtual {v0}, Lcom/google/api/Usage;->getRequirementsList()Ljava/util/List;

    move-result-object v0

    .line 526
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRules(I)Lcom/google/api/UsageRule;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0, p1}, Lcom/google/api/Usage;->getRules(I)Lcom/google/api/UsageRule;

    move-result-object p1

    return-object p1
.end method

.method public getRulesCount()I
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/UsageRule;",
            ">;"
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 670
    invoke-virtual {v0}, Lcom/google/api/Usage;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 669
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeRules(I)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 816
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 817
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$1100(Lcom/google/api/Usage;I)V

    return-object p0
.end method

.method public setProducerNotificationChannel(Ljava/lang/String;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 875
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 876
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$1200(Lcom/google/api/Usage;Ljava/lang/String;)V

    return-object p0
.end method

.method public setProducerNotificationChannelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 915
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 916
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$1400(Lcom/google/api/Usage;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRequirements(ILjava/lang/String;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 588
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$100(Lcom/google/api/Usage;ILjava/lang/String;)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/UsageRule$Builder;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 719
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 720
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 721
    invoke-virtual {p2}, Lcom/google/api/UsageRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/UsageRule;

    .line 720
    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$600(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/UsageRule;)Lcom/google/api/Usage$Builder;
    .locals 1

    .line 705
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 706
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$600(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    return-object p0
.end method

.class public final Lcom/google/api/AuthenticationRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AuthenticationRule.java"

# interfaces
.implements Lcom/google/api/AuthenticationRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/AuthenticationRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/AuthenticationRule;",
        "Lcom/google/api/AuthenticationRule$Builder;",
        ">;",
        "Lcom/google/api/AuthenticationRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 442
    invoke-static {}, Lcom/google/api/AuthenticationRule;->access$000()Lcom/google/api/AuthenticationRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/AuthenticationRule$1;)V
    .locals 0

    .line 435
    invoke-direct {p0}, Lcom/google/api/AuthenticationRule$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRequirements(Ljava/lang/Iterable;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/AuthRequirement;",
            ">;)",
            "Lcom/google/api/AuthenticationRule$Builder;"
        }
    .end annotation

    .line 752
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 753
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$1200(Lcom/google/api/AuthenticationRule;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addRequirements(ILcom/google/api/AuthRequirement$Builder;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 738
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 739
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    .line 740
    invoke-virtual {p2}, Lcom/google/api/AuthRequirement$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/AuthRequirement;

    .line 739
    invoke-static {v0, p1, p2}, Lcom/google/api/AuthenticationRule;->access$1100(Lcom/google/api/AuthenticationRule;ILcom/google/api/AuthRequirement;)V

    return-object p0
.end method

.method public addRequirements(ILcom/google/api/AuthRequirement;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 712
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 713
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/AuthenticationRule;->access$1100(Lcom/google/api/AuthenticationRule;ILcom/google/api/AuthRequirement;)V

    return-object p0
.end method

.method public addRequirements(Lcom/google/api/AuthRequirement$Builder;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {p1}, Lcom/google/api/AuthRequirement$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/AuthRequirement;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$1000(Lcom/google/api/AuthenticationRule;Lcom/google/api/AuthRequirement;)V

    return-object p0
.end method

.method public addRequirements(Lcom/google/api/AuthRequirement;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 699
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 700
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$1000(Lcom/google/api/AuthenticationRule;Lcom/google/api/AuthRequirement;)V

    return-object p0
.end method

.method public clearAllowWithoutCredential()Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 626
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 627
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0}, Lcom/google/api/AuthenticationRule;->access$800(Lcom/google/api/AuthenticationRule;)V

    return-object p0
.end method

.method public clearOauth()Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 587
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0}, Lcom/google/api/AuthenticationRule;->access$600(Lcom/google/api/AuthenticationRule;)V

    return-object p0
.end method

.method public clearRequirements()Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 764
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 765
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0}, Lcom/google/api/AuthenticationRule;->access$1300(Lcom/google/api/AuthenticationRule;)V

    return-object p0
.end method

.method public clearSelector()Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 500
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0}, Lcom/google/api/AuthenticationRule;->access$200(Lcom/google/api/AuthenticationRule;)V

    return-object p0
.end method

.method public getAllowWithoutCredential()Z
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getAllowWithoutCredential()Z

    move-result v0

    return v0
.end method

.method public getOauth()Lcom/google/api/OAuthRequirements;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getOauth()Lcom/google/api/OAuthRequirements;

    move-result-object v0

    return-object v0
.end method

.method public getRequirements(I)Lcom/google/api/AuthRequirement;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0, p1}, Lcom/google/api/AuthenticationRule;->getRequirements(I)Lcom/google/api/AuthRequirement;

    move-result-object p1

    return-object p1
.end method

.method public getRequirementsCount()I
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getRequirementsCount()I

    move-result v0

    return v0
.end method

.method public getRequirementsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/AuthRequirement;",
            ">;"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    .line 641
    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getRequirementsList()Ljava/util/List;

    move-result-object v0

    .line 640
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOauth()Z
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {v0}, Lcom/google/api/AuthenticationRule;->hasOauth()Z

    move-result v0

    return v0
.end method

.method public mergeOauth(Lcom/google/api/OAuthRequirements;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 575
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 576
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$500(Lcom/google/api/AuthenticationRule;Lcom/google/api/OAuthRequirements;)V

    return-object p0
.end method

.method public removeRequirements(I)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 776
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 777
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$1400(Lcom/google/api/AuthenticationRule;I)V

    return-object p0
.end method

.method public setAllowWithoutCredential(Z)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 613
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 614
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$700(Lcom/google/api/AuthenticationRule;Z)V

    return-object p0
.end method

.method public setOauth(Lcom/google/api/OAuthRequirements$Builder;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 564
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-virtual {p1}, Lcom/google/api/OAuthRequirements$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/OAuthRequirements;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$400(Lcom/google/api/AuthenticationRule;Lcom/google/api/OAuthRequirements;)V

    return-object p0
.end method

.method public setOauth(Lcom/google/api/OAuthRequirements;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 550
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 551
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$400(Lcom/google/api/AuthenticationRule;Lcom/google/api/OAuthRequirements;)V

    return-object p0
.end method

.method public setRequirements(ILcom/google/api/AuthRequirement$Builder;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 686
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 687
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    .line 688
    invoke-virtual {p2}, Lcom/google/api/AuthRequirement$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/AuthRequirement;

    .line 687
    invoke-static {v0, p1, p2}, Lcom/google/api/AuthenticationRule;->access$900(Lcom/google/api/AuthenticationRule;ILcom/google/api/AuthRequirement;)V

    return-object p0
.end method

.method public setRequirements(ILcom/google/api/AuthRequirement;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 673
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/AuthenticationRule;->access$900(Lcom/google/api/AuthenticationRule;ILcom/google/api/AuthRequirement;)V

    return-object p0
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 486
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$100(Lcom/google/api/AuthenticationRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthenticationRule$Builder;
    .locals 1

    .line 515
    invoke-virtual {p0}, Lcom/google/api/AuthenticationRule$Builder;->copyOnWrite()V

    .line 516
    iget-object v0, p0, Lcom/google/api/AuthenticationRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/AuthenticationRule;

    invoke-static {v0, p1}, Lcom/google/api/AuthenticationRule;->access$300(Lcom/google/api/AuthenticationRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
